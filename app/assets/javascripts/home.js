const endpoint = {
  url: 'https://covid-api.mmediagroup.fr/v1/cases?country=Global',
      };


      const MMediaURL = `${endpoint.url}`
      console.log(MMediaURL)

      fetch(MMediaURL)
          .then((data) => data.json())
          .then((covidData) => generateHTML(covidData))

      const generateHTML = (data) => {
          console.log(data)

          const html = `
              <div class = "population" > Population: ${data.All.population}</div >
              <div class = "globalCases"> Total Global Cases: ${data.All.confirmed}</div>
              <div class = "globalRecovered"> Total Global Recovered Cases: ${data.All.confirmed}</div>
          `

          const covidDataDiv = document.querySelector('.MMediacovidData')
          covidDataDiv.innerHTML = html

      }
