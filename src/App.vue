<template>
  <div id="app">
    <!-- <div></div> -->
    <div class="container">
      <div class="cw-header">
        <input checked type="checkbox" id="switch" name="theme" @change="toggleTheme()" />
        <label for="switch">Toggle</label>
        <h1 class="cw-title">
          Chris Woo
          <i class="em em-wave" aria-role="presentation" aria-label="wave"></i>
        </h1>
      </div>
      <h2 class="cw-tagline">
        software engineer & self-proclaimed ping pong pro
        <i
          class="em em-table_tennis_paddle_and_ball"
          aria-role="presentation"
          aria-label="TABLE TENNIS PADDLE AND BALL"
        ></i>
      </h2>
      <div class="cw-socials">
        <a v-for="link in links" :key="link.name" target="_blink" :href="link.href">
          <ion-icon :name="link.icon"></ion-icon>
        </a>
      </div>
      <p class="cw-info">
        Sometimes, my friends call me
        <i>Woooooooooooo or Woozzie</i>. Currently, I'm a fourth year software engineering student at
        <span
          class="extra"
        >Concordia University</span> on my quest to get the iron ring.
        <br />
        <br />I also helped organize ConUHacks IV and V, the biggest hackathon in Montreal at Concordia University.
        <br />
        <br />I'm
        <span class="extra">passionate</span> about travelling, sports, space, and coding. Some of my role models are Chris Hadfield, Elon Musk, Gary Vaynerchuk, Casey Neistat.
      </p>
      <div class="cw-experience">
        <div class="cw-experience-item" v-for="job in jobs" :key="job.id">
          <div>
            <img :src="job.img" height="35px" width="35px" />
          </div>
          <div v-html="job.info" :class="job.id == 'drw2' && 'special'"></div>
        </div>
      </div>
      <!-- <div class="cw-projects">
        <div class="cw-projects-item" v-for="project in projects" :key="project.id">
          <h4>
            {{project.title}}
            <i
              class="em em-first_place_medal"
              aria-role="presentation"
              aria-label="FIRST PLACE MEDAL"
            ></i>
            {{project.subtitle}}
          </h4>
          <p>{{project.info}}</p>
        </div>
      </div> -->
    </div>
    <!-- <div></div> -->
  </div>
</template>

<script>
const linkedin = "https://www.linkedin.com/in/chriskfwoo";
const github = "https://github.com/chriskfwoo";
const email = "chriskfwoo@gmail.com";

export default {
  name: "app",
  created: function() {
    document.documentElement.setAttribute("data-theme", "dark");
  },
  data: function() {
    return {
      theme: "dark",
      links: [
        {
          href: linkedin,
          icon: "logo-linkedin",
          name: "linkedin"
        },
        {
          href: github,
          icon: "logo-github",
          name: "github"
        },
        {
          href: "/files/chriswoo_resume2020.pdf",
          icon: "document-text",
          name: "resume"
        },
        {
          href: `mailto:${email}?subject=Hello!`,
          icon: "mail",
          name: "email"
        }
      ],
      jobs: [
        {
          id: "storetasker",
          img: require("./assets/storetasker.png"),
          info:
            'I was excited to get my first internship at <span class="cw-experience-tag">Storetasker</span> (summer 2017). I was working on a web-app and gained a lot of UI skills.'
        },
        {
          id: "drw1",
          img: require("./assets/drw-black.png"),
          info:
            'I did my second internship at <span class="cw-experience-tag">DRW</span> (Jan 2018 - Dec 2018), I was there for a year while balancing school. I was part of the proprietary trading firm on the event-driven trading team. I was slowly becoming a full-stack engineer and learned a bit of the stock market along the way.'
        },
        {
          id: "plotly",
          img: require("./assets/plotly.png"),
          info:
            'I pivoted and did my third internship at <span class="cw-experience-tag">Plotly</span> (summer 2019). It was awesome learning more about the open-source community and data visualization.'
        },
        {
          id: "drw2",
          img: require("./assets/drw-black.png"),
          info:
            'In fall 2019, I pivoted back to <span class="cw-experience-tag">DRW</span> where I\'m currently a full-time Software Engineer under the event-driven trading team.'
        }
      ],
      projects: [
        {
          id: "bonjour",
          title: "Bonjour-Hi",
          subtitle:
            "1st place Facebook’s Mission @ Yale University - YHacks 2018",
          info:
            "A chatroom with bunch of people speaking in their own language but they’ll all hear the conversation in their own language."
        },
        {
          id: "gifs",
          title: "GIFS Agaisnt Humanity",
          subtitle:
            "1st place GIPHY API @ Boston University - BostonHacks 2018",
          info:
            "A multi-player web game that works like cards against humanity but with a set of random GIFS."
        }
      ]
    };
  },
  methods: {
    redirect: function(link) {
      window.open(link, "_blank");
    },
    toggleTheme: function() {
      if (this.theme == "dark") {
        this.theme = "light";
      } else {
        this.theme = "dark";
      }
    }
  },
  watch: {
    // whenever question changes, this function will run
    theme: function(value) {
      document.documentElement.classList.add("theme-transition");
      document.documentElement.setAttribute("data-theme", value);
      window.setTimeout(function() {
        document.documentElement.classList.remove("theme-transition");
      }, 1000);
    }
  }
};
</script>

<style lang="scss">
@import url("https://fonts.googleapis.com/css2?family=Open+Sans&display=swap");
// THEMES
html {
  --primaryBackground: #ffffff;
  --primaryTextColor: #000000;
  --secondaryTextColor: #000000;
  --tertiaryTextColor: #000000;
  --fadedTextColor: #000000;
}

// dark theme (default)
html[data-theme="dark"] {
  --primaryBackground: #121212;
  --secondaryBackground: #000000;
  --primaryTextColor: #ffffff;
  --secondaryTextColor: #03dac6;
  --tertiaryTextColor: #9146ff;
  --fadedTextColor: #c2c2c2;
}


html.theme-transition,
html.theme-transition *,
html.theme-transition *:before,
html.theme-transition *:after {
  transition: all 3s !important;
  transition-delay: 0 !important;
}

body {
  background-color: var(--primaryBackground);
  color: var(--primaryTextColor);
  font-family: "Open Sans", sans-serif;
}
#app {
  // display: grid;
  // grid-template-columns: repeat(3, 1fr);
  padding-bottom: 50px;
}
h1 {
  color: var(--primaryTextColor);
  font-size: 3.5rem;
}
h2 {
  color: var(--secondaryTextColor);
  font-size: 1.8rem;
}
.extra {
  color: var(--tertiaryTextColor);
  font-weight: bold;
}
p {
  font-size: 1.3rem;
}
.em-wave {
  font-size: 2rem;
}
.cw-header {
  padding-top: 50px;
}
.cw-title {
  margin-bottom: 0px;
}
.cw-tagline {
  margin: 0;
}
.cw-info {
  padding: 30px 0px;
}
.cw-container {

}
// SOCIAL SECTION
.cw-socials {
  a {
    padding-right: 10px;
    color: var(--primaryTextColor);
    text-decoration: none;
  }
  ion-icon {
    font-size: 1.8em;
    color: var(--primaryTextColor);
  }
}

// EXPERIENCE SECTION
.cw-experience {
  background: #17141d;
  padding: 20px;
  box-shadow: 0 4px 80px #070509;
  border-radius: 16px;
  color: #c2c2c2;
  &-item {
    display: flex;
    font-size: 1rem;
    img {
      margin-right: 15px;
      border-radius: 0.5rem;
    }
    margin-bottom: 20px;
    .special {
      color: #fff;
      font-weight: bold;
    }
    &:last-child {
      margin-bottom: 0px;
    }
  }
  &-tag {
    font-weight: bold;
    color: #018786;
  }
}

// PROJECT SECTION
.cw-projects {
  padding-top: 50px;
  color: var(--fadedTextColor);
  &-item {
    h4 {
      margin-bottom: 0;
    }
    p {
      font-size: 1rem;
      margin-top: 0;
    }
    i {
      margin-left: 15px;
    }
  }
}

// TOGGLE SWITCH
input[type="checkbox"] {
  height: 0;
  width: 0;
  visibility: hidden;
}

label {
  cursor: pointer;
  text-indent: -9999px;
  width: 52px;
  height: 27px;
  background: grey;
  float: right;
  border-radius: 100px;
  position: relative;
}

label:after {
  content: "";
  position: absolute;
  top: 3px;
  left: 3px;
  width: 20px;
  height: 20px;
  background: #fff;
  border-radius: 90px;
  transition: 0.3s;
}

input:checked + label {
  background: #0077ff;
}

input:checked + label:after {
  left: calc(100% - 5px);
  transform: translateX(-100%);
}

label:active:after {
  width: 45px;
}

.container {
  padding-right: 15px;
  padding-left: 15px;
  margin-right: auto;
  margin-left: auto;
}
@media (min-width: 768px) {
  .container {
    width: 750px;
  }
}
@media (min-width: 992px) {
  .container {
    width: 970px;
  }
}
@media (min-width: 1200px) {
  .container {
    width: 800px;
  }
}
</style>
