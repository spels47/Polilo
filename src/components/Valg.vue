<template>
  <div>
    <div>
      <a id="logo">Valg</a>
    </div>

    <img src="../assets/logo2.png">
    <h2 style="margin:0px, padding:0px" class="MiniLogo">Last Ned Partiprogram Nedenfor</h2>

    <div id="body">
        <ul id="menu">
          <li><a id="ALLE" style="background-color: rgba(80, 80, 80, 0.5);" @click='GetDocuments("ALLE")'><span>Alle</span></a></li><br><br>
          <li><a id="AP" style="background-color: rgba(224, 18, 32, 0.5);" @click='GetDocuments("AP")'><span>Arbeiderpartiet</span></a></li><br><br>
          <li><a id="FP" style="background-color: rgba(2, 76, 147, 0.5);" @click='GetDocuments("FP")'><span>Fremskrittspartiet</span></a></li><br><br>
          <li><a id="H" style="background-color: rgba(0, 79, 139, 0.5);" @click='GetDocuments("H")'><span>Høyre</span></a></li><br><br>
          <li><a id="KFP" style="background-color: rgba(238, 64, 58, 0.5);" @click='GetDocuments("KFP")'><span>KristeligFolkeparti</span></a></li><br><br>
          <li><a id="MDG" style="background-color: rgba(86, 149, 71, 0.5);" @click='GetDocuments("MDG")'><span>Miljøpartiet De Grønne</span></a></li><br><br>
          <li><a id="R" style="background-color: rgba(233, 3, 2, 0.5);" @click='GetDocuments("R")'><span>Rødt</span></a></li><br><br>
          <li><a id="SP" style="background-color: rgba(0, 133, 66, 0.5);" @click='GetDocuments("SP")'><span>Senterpartiet</span></a></li><br><br>
          <li><a id="SV" style="background-color: rgba(220, 0, 40, 0.5);" @click='GetDocuments("SV")'><span>Sosialistisk Venstreparti</span></a></li><br><br>
          <li><a id="V" style="background-color: rgba(0, 102, 102, 0.5);" @click='GetDocuments("V")'><span>Venstre</span></a></li><br><br>
      </ul>
    </div>
  </div>
</template>

<script>
import axios from "axios";
import FileDownload from"js-file-download";
export default {
  name: 'Home',
  data () {
    return {
      PartyList: [
        "Arbeiderpartiet",
        "Fremskrittspartiet",
        "Høyre",
        "KristeligFolkeparti",
        "Miljøpartiet De Grønne",
        "Rødt",
        "Senterpartiet",
        "Sosialistisk Venstreparti",
        "Venstre"
        ],
    }
  },
  methods: {
    GetDocuments: async function (element){
      let response;
      switch(element){
        case "ALLE":
          response = [];
          for(let i = 0; i < 9;i++){
            //response[i] = await axios.get(`https://localhost:44336/api/Documents/${this.PartyList[i]}`);
            //response[i] = await axios.get(`167.71.68.222:8086/api/Documents/${this.PartyList[i]}`);
            response[i] = await axios.get(`polilo.ornell.io/api/Documents/${this.PartyList[i]}`);
          }
          for(let k = 0; k < 9;k++){
            await FileDownload(response[k].data,`${this.PartyList[k]}.pdf`);
          }
          break;
        case "AP":
          //response = await axios.get(`https://localhost:44336/api/Documents/Arbeiderpartiet`);
          //response = await axios.get(`167.71.68.222:8086/api/Documents/Arbeiderpartiet`);
          response = await axios.get(`polilo.ornell.io/api/Documents/Arbeiderpartiet`);
          await FileDownload(response.data,"Arbeiderpartiet.pdf");
          break;
        case "FP":
          //response = await axios.get(`https://localhost:44336/api/Documents/Fremskrittspartiet`);
          //response = await axios.get(`167.71.68.222:8086/api/Documents/Fremskrittspartiet`);
          response = await axios.get(`polilo.ornell.io/api/Documents/Fremskrittspartiet`);
          await FileDownload(response.data,"Fremskrittspartiet.pdf");
          break;
        case "H":
          //response = await axios.get(`https://localhost:44336/api/Documents/Høyre`);
          //response = await axios.get(`167.71.68.222:8086/api/Documents/Høyre`);
          response = await axios.get(`polilo.ornell.io/api/Documents/Høyre`);
          await FileDownload(response.data,"Høyre.pdf");
          break;
        case "KFP":
          //response = await axios.get(`https://localhost:44336/api/Documents/KristeligFolkeparti`);
          //response = await axios.get(`167.71.68.222:8086/api/Documents/KristeligFolkeparti`);
          response = await axios.get(`polilo.ornell.io/api/Documents/KristeligFolkeparti`);
          await FileDownload(response.data,"Kristelig Folkeparti.pdf");
          break;
        case "MDG":
          //response = await axios.get(`https://localhost:44336/api/Documents/Miljøpartiet De Grønne`);
          //response = await axios.get(`167.71.68.222:8086/api/Documents/Miljøpartiet De Grønne`);
          response = await axios.get(`polilo.ornell.io/api/Documents/Miljøpartiet De Grønne`);
          await FileDownload(response.data,"Miljøpartiet De Grønne.pdf");
          break;
        case "R":
          //response = await axios.get(`https://localhost:44336/api/Documents/Rødt`);
          response = await axios.get(`polilo.ornell.io/api/Documents/Rødt`);
          await FileDownload(response.data,"Rødt.pdf");
          break;
        case "SP":
          //response = await axios.get(`https://localhost:44336/api/Documents/Senterpartiet`);
          //response = await axios.get(`167.71.68.222:8086/api/Documents/Senterpartiet`);
          response = await axios.get(`polilo.ornell.io/api/Documents/Senterpartiet`);
          await FileDownload(response.data,"Senterpartiet.pdf");
          break;
        case "SV":
          //response = await axios.get(`https://localhost:44336/api/Documents/Sosialistisk Venstreparti`);
          //response = await axios.get(`167.71.68.222:8086/api/Documents/Sosialistisk Venstreparti`);
          response = await axios.get(`polilo.ornell.io/api/Documents/Sosialistisk Venstreparti`);
          await FileDownload(response.data,"Sosialistisk Venstreparti.pdf");
          break;
        case "V":
          //response = await axios.get(`https://localhost:44336/api/Documents/Venstre`);
          //response = await axios.get(`167.71.68.222:8086/api/Documents/Venstre`);
          response = await axios.get(`polilo.ornell.io/api/Documents/Venstre`);
          await FileDownload(response.data,"Venstre.pdf");
          break;
      }
    }
  }
}
</script>

<style>
@import url(https://fonts.googleapis.com/css?family=Open+Sans:400,800,700,300);
@import url(https://fonts.googleapis.com/css?family=Squada+One);
body {
  padding: 20px 80px;
  background: #eee url(https://subtlepatterns.com/patterns/extra_clean_paper.png);
  margin:0px;
  padding:0px;
  user-select: none;
}
ul {
  display:inline;
}
#logo {
  font-family: 'Open Sans', sans-serif;
  color: #555;
  text-decoration: none;
  text-transform: uppercase;
  font-size: 150px;
  font-weight: 800;
  letter-spacing: -3px;
  line-height: 1;
  text-shadow: #EDEDED 3px 2px 0;
  position: relative;
}
#logo:after {
  content:"valg";
  position: absolute;
  left: 8px;
  top: 32px;
}
#logo:after {
  /*background: url(https://subtlepatterns.com/patterns/crossed_stripes.png) repeat;*/
  background-image: -webkit-linear-gradient(left top, transparent 0%, transparent 25%, #555 25%, #555 50%, transparent 50%, transparent 75%, #555 75%);
  background-size: 4px 4px;
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  z-index: -5;
  display: block;
  text-shadow: none;
}
#menu {
  width: 1090px;
  height: 42px;
  list-style: none;
  margin: 10px 0 0 0; padding: 25px 10px;
}
#menu li {
  display: inline-block;
  width: 60vw;
  margin: 0 10px;
  -webkit-transform: skewy(-3deg);
  -webkit-backface-visibility: hidden;
  -webkit-transition: 200ms all;
}
#menu li a {
  text-transform: uppercase;
  font-family: 'Squada One', cursive;
  font-weight: 800;
  display: block;
  background: #FFF;
  padding: 2px 10px;
  color: #333;
  font-size: 35px;
  text-align: center;
  text-decoration: none;
  position: relative;
  z-index: 1;
  text-shadow: 
		1px 1px 0px #FFF, 
		2px 2px 0px #999,
		3px 3px 0px #FFF;
	background-image: -webkit-linear-gradient(top, transparent 0%, rgba(0,0,0,.05) 100%);
	-webkit-transition: 1s all;
	background-image: -webkit-linear-gradient(left top, 
		transparent 0%, transparent 25%, 
		rgba(0,0,0,.15) 25%, rgba(0,0,0,.15) 50%, 
		transparent 50%, transparent 75%, 
		rgba(0,0,0,.15) 75%);
  background-size: 4px 4px;
	box-shadow: 
		0 0 0 1px rgba(0,0,0,.4) inset, 
		0 0 20px -5px rgba(0,0,0,.4),
		0 0 0px 3px #FFF inset;
}
#menu li:hover {
	width: 80vw;
	margin: 0 -5px;
}
#menu a:hover {
  color: #d90075;
}
#menu li:after,
#menu li:before {
  content: '';
  position: absolute;
  width: 50px;
  height: 100%;
  background: #BBB;
  -webkit-transform: skewY(8deg);
  x-index: -3;
	border-radius: 4px;
}
#menu li:after {
	background-image: -webkit-linear-gradient(left, transparent 0%, rgba(0,0,0,.4) 100%);
  right: 0;
  top: -4px; 
}
#menu li:before {
  left: 0;
  bottom: -4px;
	background-image: -webkit-linear-gradient(right, transparent 0%, rgba(0,0,0,.4) 100%);
}

.MiniLogo{
  
  font-family: 'Open Sans', sans-serif;
  color: #555;
  text-decoration: none;
  text-transform: uppercase;
  font-size: 75px;
  font-weight: 400;
  letter-spacing: -3px;
  line-height: 1;
  text-shadow: #EDEDED 3px 2px 0;
  position: relative;
  border-top: 4px double #AAA;
  border-bottom: 4px double #AAA;

}
.MiniLogo:after{
  /*background: url(https://subtlepatterns.com/patterns/crossed_stripes.png) repeat;*/
  background-image: -webkit-linear-gradient(left top, transparent 0%, transparent 25%, #555 25%, #555 50%, transparent 50%, transparent 75%, #555 75%);
  background-size: 4px 4px;
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  z-index: -5;
  display: block;
  text-shadow: none;
}
</style>

