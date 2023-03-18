<a name="readme-top"></a>

# 📗 Table of Contents

- [� Table of Contents](#-table-of-contents)
- [📖 \[booking-app \] ](#-booking-app--)
  - [🛠 Built With ](#-built-with-)
    - [Tech Stack ](#tech-stack-)
    - [Key Features ](#key-features-)
  - [🚀 Live Demo ](#-live-demo-)
  - [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Install](#install)
    - [Usage](#usage)
    - [Run tests](#run-tests)
    - [Deployment](#deployment)
  - [👥 Authors ](#-authors-)
  - [🔭 Future Features ](#-future-features-)
  - [🤝 Contributing ](#-contributing-)
  - [⭐️ Show your support ](#️-show-your-support-)
  - [🙏 Acknowledgments ](#-acknowledgments-)
  - [Kanban Board ](#kanban-board-)
  - [📝 License ](#-license-)

<!-- PROJECT DESCRIPTION -->

# 📖 [booking-app ] <a name="about-project"></a>

**[booking-app-bak-end]** is an application which allows users to to book/rent vehicles for the stipulated amount of time.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
<summary>Server</summary>
  <ul>
    <li><a href="https://www.ruby-lang.org/en/">Ruby</a></li>
    <li><a href="https://rubyonrails.org/">Ruby on Rails</a></li>
  </ul>
</details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

- **[Authenicate user]**
- **[Fetch bookings]**
- **[Post bookings]**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LIVE DEMO -->

## 🚀 Live Demo <a name="live-demo"></a>

- [Live Demo Link](coming soon)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

- Have ruby installed
- Have node installed
- Have rails installed

### Setup

You can find the React Frontend client at [React-client](https://github.com/RichardChileya/booking-app-front-end)

Clone this repository to your desired folder:

To run and view this application, you will first have to clone a local version of this repository using:

`git clone https://github.com/RichardChileya/booking-app-back-end.git`

After that navigate to the newly created folder:

`cd booking-app`

### Install

Install this project with:
 `bundle install`

### Usage

- To run the project follow the instructions below:

- You can find the React Frontend client at [React-client](https://github.com/RichardChileya/booking-app-front-end)

- Configure Environment file in your project by running the following command:

`bundle exec figaro install`

- In `config/application.yml`, add the following env keys:
  `DEVISE_SECRET_KEY:`
  `DB_USERNAME:`
  `DB_PASSWORD:`

- Run the command below to generate App Secret for your authentication and add as the DEVISE_SECRET_KEY in your environment:
  `rake secret`

- Then run the following command to setup the database:
```
rails db:create, rails db:migrate, rails db:seed
```

- Start a local server running the command:

`rails s`


### Run tests

To run tests, run the following command:

```
bundle exec rspec ./spec/requests
bundle exec rspec ./spec/controllers
```


### Deployment

You can deploy this project using:

<!--
Example:

```sh

```
 -->

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

👤 **Richard Chileya**

- GitHub: [@RichardChileya](https://github.com/RichardChileya)
- Twitter: [@RichardChileya](https://twitter.com/RichardChileya)
- LinkedIn: [Richard Chileya](https://www.linkedin.com/in/RichardChileya/)

👤 **Tashobya Israel**

- GitHub: [@tashisrael](https://github.com/tashisrael)
- Twitter: [@tashisrael](https://twitter.com/tashisrael)
- Linkedin: [Tashobya Israel](https://www.linkedin.com/in/tashobya-israel-6a66b0181/l)

👤 **Recillah Khamala**

- GitHub: [@Recillah-Khamala](https://github.com/Recillah-Khamala)
- Twitter: [@recillahk](https://twitter.com/recillahk)
- LinkedIn: [recillah-khamala](https://www.linkedin.com/in/recillah-khamala/)

👤 **Muyiwa Fawole**

- GitHub: [@samlorlah](https://github.com/samlorlah)
- Twitter: [@samlorlah](https://twitter.com/samlorlah)
- LinkedIn: [Oluwamuyiwa Fawole](https://linkedin.com/in/muyiwa-fawole)teh)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- [ ] **[More booking options]**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/RichardChileya/booking-app-back-end/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

Give a ⭐️ if you like this project!

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>
we would like to thank:
- Microverse for adding this project in the carriculum
- [Murat Korkmaz](https://www.behance.net/gallery/26425031/Vespa-Responsive-Redesign) the creator of the original design.


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- Kanban Board -->

## Kanban Board <a name="kanban_board"></a>

- [Kanban Board](https://github.com/RichardChileya/booking-app-back-end/projects/1)

- Team of 3 members

- ![Screenshot](https://docs.google.com/document/d/1nOtGC4foEGAMVpv6Y2E4LCuwEzw1Zx87fHM3by1g1eI/edit?usp=sharing)


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
