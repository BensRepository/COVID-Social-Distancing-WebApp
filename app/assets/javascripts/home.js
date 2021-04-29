<script>

		const govukurl = {
			url: 'https://api.coronavirus.data.gov.uk/v1/data?',
        };

        const
            AreaType = "nation",
            AreaName = "england";


        const
            filters = [
                `areaType=${AreaType}`,
                `areaName=${AreaName}`

            ],
            structure = {
                date: "date",
                dailyCases: "newCasesByPublishDate"
            };

        const
            apiParams = `filters=${filters.join(";")}&structure=${JSON.stringify(structure)}`,
            encodedParams = encodeURI(apiParams);

        const govUkURL = `${govukurl.url}${encodedParams }`

        fetch(govUkURL)
            .then((ukdata) => ukdata.json())
            .then((covidData) => generateHTML(covidData))

        const generateHTML = (ukdata) => {
            console.log(ukdata)

            const html = `
                <div class = "dataDate" > Date: ${ukdata.data[0].date}</div >
                <div class = "dataCases"> Daily Cases: ${ukdata.data[0].dailyCases}</div>
            `

            const covidDataDiv = document.querySelector('.GovUKcovidData')
            covidDataDiv.innerHTML = html

        }

	</script>
