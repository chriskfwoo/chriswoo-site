<template>
  <div id="app">
    <div class="container">
      <div class="row">
        <div class="one-half column">
          <div>
            <h1 class="name">Welcome, I'm <span class="bold">Chris Woo</span>! 
              <i class="em em-wave"></i>
            </h1>
            <h5>software engineer & self-proclaimed ping pong pro <i class="em em-table_tennis_paddle_and_ball"></i> </h5>
          </div>
          <div class="pics">
            <img v-for="pic in selfies" :key="pic.id" :alt="pic.id" :src="pic.img" width="25%" height="25%" />
          </div>
          <div>
          <p class="bio">
            Sometimes, my friends call me “Woooooooooooo”. Currently, I'm a fourth year software engineering student at <span class="highlight-container"><span class="highlight">Concordia University</span></span> on my quest to get the iron ring. I'm passionate about travelling, sports, space, and coding. 
            Some of my role models are Chris Hadfield, Elon Musk, Gary Vaynerchuk, Casey Neistat. <br /> <br />
            Feel free to checkout out my <a class="bold" target="_blank" href="/files/chriswoo_resume.pdf">resume</a> 
            or reach out to me at <a class="bold" target="_blank" href="mailto:chriskfwoo@gmail.com?subject=Hello!">chriskfwoo@gmail.com</a>.
          </p>
          <div>
            <a v-for="link in links" :key="link.icon" target="_blink" :href="link.href">
              <ion-icon :name="link.icon"></ion-icon>
            </a>
          </div>
          </div>
        </div>
        <div class="one-half column">
          <h3 class="highlight">Experience</h3>
          <div class="experiences" v-for="exp in experiences" :key="exp.id">
            <h6>{{exp.date}} <br /> 
              <span class="bold">{{exp.position}} @ {{exp.company}}</span>
            </h6>
            <img :alt="exp.id" :src="exp.img" width="30%" height="30%" @click="redirect(exp.link)">
          </div>
        </div>
      </div>
    </div>
  <footer>
    <a href="/2019">2019</a>
    <a href="/2018">2018</a>
    <a href="/2017">2017</a>
    <a href="/2016">2016</a>
  </footer>
  </div>
</template>

<script>

const linkedin = "https://www.linkedin.com/in/chriskfwoo";
const github = "https://github.com/chriskfwoo";
const email = "chriskfwoo@gmail.com";

export default {
  name: "app",
  data: function() {
    return {
      links: [
        {
          href: linkedin,
          icon: "logo-linkedin"
        },
        {
          href: `mailto:${email}?subject=Hello!`,
          icon: "mail"
        },
        {
          href: github,
          icon: "logo-github"
        },
        {
          href: "/files/chriswoo_resume.pdf",
          icon: "document"
        }
      ],
      experiences: [
        {
          id: "plotly",
          date: "May 2019 - Present",
          position: "Software Engineer Intern",
          company: "Plotly",
          img: require("./assets/plotly.png"),
          link: "http://plot.ly"
        },
        {
          id: "vigilant",
          date: "Jan 2018 - Dec 2018",
          position: "Software Developer Intern",
          company: "DRW",
          img: require("./assets/drw.png"),
          link: "http://drw.com"
        },
        {
          id: "carson",
          date: "May 2017 - Aug 2017",
          position: "Software Developer Intern",
          company: "Carson eCommerce",
          img: require("./assets/carson.png"),
          link: "https://storetasker.com"
        }
      ],
      selfies: [
        {
          id: "me",
          img: require("./assets/me.jpg")
        },
        {
          id: "snowboard",
          img: require("./assets/snowboard.jpg")
        },
        {
          id: "waterfall",
          img: require("./assets/waterfall.jpg")
        }
      ]
    };
  },
  methods: {
    redirect: function(link) {
      window.open(link, "_blank");
    }
  }
  
};
</script>

<style lang="scss">
body {
  background-color: #ebf5fa;
}
#app {
  font-family: "Avenir", Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  color: #212b36;
  margin: 60px 0px;
}
.highlight {
  text-decoration: none;
  background-image: linear-gradient(#ffea8a, #ffea8a);
  background-size: auto 15px;
  background-repeat: repeat no-repeat;
  background-position: bottom center;
  padding-bottom: 0px;
}
ion-icon {
  font-size: 3.5rem;
  padding-right: 15px;
  &:hover {
    opacity: 0.5;
  }
}
.experiences {
  padding-bottom: 25px;
}
.name {
  font-size: 4.5rem;
}
.em-wave {
  height: 1em;
  width: 1em;
}
.em-table_tennis_paddle_and_ball {
  height: 1em;
  width: 0.8em;
}
.container {
  max-width: 100%;
}
.bottom,
.top {
  display: flex;
  justify-content: space-between;
}
.bold {
  font-weight: bold;
}
.pics {
  margin: 20px 0px;
  img {
    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.19), 0 6px 6px rgba(0, 0, 0, 0.23);
    @media (min-width: 1281px) {
      margin-right: 35px;
    }
  }
}
.highlight-container,
.highlight {
  position: relative;
}
.highlight-container {
  display: inline-block;
  &:before,
  &:after {
    content: " ";
    display: block;
    height: 90%;
    width: 100%;
    margin-left: -2px;
    margin-right: -2px;
    position: absolute;
  }
  &:before {
    background: rgba(234, 221, 6, 0.9);
    transform: rotate(0deg);
    top: 2px;
    left: 1px;
  }
  &:after {
    background: rgba(234, 210, 6, 0.6);
    top: 1px;
    right: -1px;
  }
  .highlight {
    color: #333;
    z-index: 4;
  }
}
a {
  color: #202e78;
  cursor: pointer;
  &:hover {
    color: #5c6ac4;
  }
}
footer {
  position: fixed;
  bottom: 0;
  a {
    font-size: 18px;
    text-decoration: none;
    margin: 10px;
  }
}
</style>
