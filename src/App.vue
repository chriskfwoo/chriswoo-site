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
            <img alt="chris" src="./assets/me.jpg" width="25%" height="25%">
            <img alt="snowboard" src="./assets/snowboard.jpg" width="25%" height="25%">
            <img alt="hike" src="./assets/waterfall.jpg" width="25%" height="25%">
          </div>
          <div>
          <p class="bio">
            Sometimes my friends call me “Woooooooooooo”. Currently, I'm a third year <span class="highlight-container"><span class="highlight">software engineering student at
            Concordia University</span></span> on my quest to get the iron ring. I'm passionate about travelling, sports, space, and coding. 
            Some of my role models are Chris Hadfield, Elon Musk, Gary Vaynerchuk, Casey Neistat. <br /> <br />
            Feel free to checkout out my <a class="bold" target="_blank" href="/files/chriswoo_resume.pdf">resume</a> 
            or reach out to me at <a class="bold" target="_blank" href="mailto:chriskfwoo@gmail.com?subject=Hello!">chriskfwoo@gmail.com</a>.
          </p>
          <div>
            <a target="_blank" href="https://www.linkedin.com/in/chriskfwoo"><ion-icon name="logo-linkedin"></ion-icon></a>
            <a target="_blank" href="mailto:chriskfwoo@gmail.com?subject=Hello!"><ion-icon name="mail"></ion-icon></a>
            <a target="_blank" href="https://github.com/chriskfwoo"><ion-icon name="logo-github"></ion-icon></a>
            <a target="_blank" href="/files/chriswoo_resume.pdf"><ion-icon name="document"></ion-icon></a>
          </div>
          </div>
        </div>
        <div class="one-half column">
          <h3 class="highlight">Experience</h3>
          <div>
            <h6>Jan 2018 - Present <br /> 
              <span class="bold">Software Developer Intern @ Vigilant - a DRW Company</span>
            </h6>
            <img alt="chris" src="./assets/vigilant.png" width="35%" height="35%">
          </div>
          <br />
          <div>
            <h6>May 2017 - Aug 2017 <br />
              <span class="bold">Software Developer Intern @ Carson eCommerce</span>
            </h6>
            <img alt="chris" src="./assets/carson.png" width="35%" height="35%">
          </div>
          <!-- <h3 class="highlight">Reminders</h3>
            I have a bet that Tottenham Hotspurs will finish higher then Arsenal in the 2018-2019 Premier League.
            <br /> <br />
            My friend and I take turns buying a large popcorn!
            Whose turn is it? <span class="bold">Me</span>. <a>Switch?</a> -->
        </div>
      </div>
    </div>
  <footer>
    <a href="/2017">2017</a>
    <a href="/2016">2016</a>
  </footer>
  </div>
</template>

<script>
import HelloWorld from "./components/HelloWorld.vue";

export default {
  name: "app",
  components: {
    HelloWorld
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
.name {
  font-size: 5rem;
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
.u-full-width {
  width: 100%;
  box-sizing: border-box;
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
