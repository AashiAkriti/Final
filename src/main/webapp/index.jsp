<html>
<head>
<style>
/* input[type="password"] {
  color: transparent;
} */
/*//////////////////////////////////////////////////////////////////
[ FONT ]*/
@font-face {
  font-family: Poppins-Regular;
  src: url('fonts/poppins/Poppins-Regular.ttf'); 
}
@font-face {
  font-family: Poppins-Medium;
  src: url('fonts/poppins/Poppins-Medium.ttf'); 
}
@font-face {
  font-family: Poppins-Bold;
  src: url('fonts/poppins/Poppins-Bold.ttf'); 
}
@font-face {
  font-family: Poppins-SemiBold;
  src: url('fonts/poppins/Poppins-SemiBold.ttf'); 
}
/*//////////////////////////////////////////////////////////////////
[ RESTYLE TAG ]*/
* {
	margin: 0px; 
	padding: 0px; 
	box-sizing: border-box;
}
body, html {
	height: 100%;
	font-family: Poppins-Regular, sans-serif;
}
/*---------------------------------------------*/
a {
	font-family: Poppins-Regular;
	font-size: 14px;
	line-height: 1.7;
	color: #666666;
	margin: 0px;
	transition: all 0.4s;
	-webkit-transition: all 0.4s;
  -o-transition: all 0.4s;
  -moz-transition: all 0.4s;
}
a:focus {
	outline: none !important;
}
a:hover {
	text-decoration: none;
  color: #57b846;
}
/*---------------------------------------------*/
h1,h2,h3,h4,h5,h6 {
	margin: 0px;
}
p {
	font-family: Poppins-Regular;
	font-size: 14px;
	line-height: 1.7;
	color: #666666;
	margin: 0px;
}
ul, li {
	margin: 0px;
	list-style-type: none;
}
/*---------------------------------------------*/
input {
	outline: none;
	border: none;
}
input[type="number"] {
    -moz-appearance: textfield;
    appearance: none;
    -webkit-appearance: none;
}
input[type="number"]::-webkit-outer-spin-button,
input[type="number"]::-webkit-inner-spin-button {
    -webkit-appearance: none;
}
textarea {
  outline: none;
  border: none;
}
textarea:focus, input:focus {
  border-color: transparent !important;
}
input:focus::-webkit-input-placeholder { color:transparent; }
input:focus:-moz-placeholder { color:transparent; }
input:focus::-moz-placeholder { color:transparent; }
input:focus:-ms-input-placeholder { color:transparent; }
textarea:focus::-webkit-input-placeholder { color:transparent; }
textarea:focus:-moz-placeholder { color:transparent; }
textarea:focus::-moz-placeholder { color:transparent; }
textarea:focus:-ms-input-placeholder { color:transparent; }
input::-webkit-input-placeholder {color: #999999;}
input:-moz-placeholder {color: #999999;}
input::-moz-placeholder {color: #999999;}
input:-ms-input-placeholder {color: #999999;}
textarea::-webkit-input-placeholder {color: #999999;}
textarea:-moz-placeholder {color: #999999;}
textarea::-moz-placeholder {color: #999999;}
textarea:-ms-input-placeholder {color: #999999;}
label {
  display: block;
  margin: 0;
}
/*---------------------------------------------*/
button {
	outline: none !important;
	border: none;
	background: transparent;
}
button:hover {
	cursor: pointer;
}
iframe {
	border: none !important;
}
/*//////////////////////////////////////////////////////////////////
[ Utility ]*/
.txt1 {
  font-family: Poppins-Regular;
  font-size: 13px;
  line-height: 1.4;
  color: #999999;
}
/*//////////////////////////////////////////////////////////////////
[ login ]*/
.limiter {
  width: 100%;
  margin: 0 auto;
}
.container-login100 {
  width: 100%;  
  min-height: 100vh;
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  align-items: center;
  padding: 15px;
  background: #ebeeef;
}
.wrap-login100 {
  width: 670px;
  background: #fff;
  border-radius: 10px;
  overflow: hidden;
  position: relative;
}
/*==================================================================
[ Title form ]*/
.login100-form-title {
  width: 100%;
  position: relative;
  z-index: 1;
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  flex-wrap: wrap;
  flex-direction: column;
  align-items: center;
  background-image: url("file:///D:/demo/edu/src/main/webapp/images/bg-01.jpg");
  background-repeat: no-repeat;
  background-size: cover;
  background-position: center;
  padding: 70px 15px 74px 15px;
}
.login100-form-title-1 {
  font-family: Poppins-Bold;
  font-size: 30px;
  color: #fff;
  text-transform: uppercase;
  line-height: 1.2;
  text-align: center;
}
.login100-form-title::before {
  content: "";
  display: block;
  position: absolute;
  z-index: -1;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
  background-color: rgba(54,84,99,0.7);
}
/*==================================================================
[ Form ]*/
.login100-form {
  width: 100%;
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  padding: 43px 88px 93px 190px;
}
/*------------------------------------------------------------------
[ Input ]*/
.wrap-input100 {
  width: 100%;
  position: relative;
  border-bottom: 1px solid #b2b2b2;
}
.label-input100 {
  font-family: Poppins-Regular;
  font-size: 15px;
  color: #808080;
  line-height: 1.2;
  text-align: right;
  position: absolute;
  top: 14px;
  left: -105px;
  width: 80px;
}
/*---------------------------------------------*/
.input100 {
  font-family: Poppins-Regular;
  font-size: 15px;
  color: #555555;
  line-height: 1.2;
  display: block;
  width: 100%;
  background: transparent;
  padding: 0 5px;
}
.focus-input100 {
  position: absolute;
  display: block;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
  pointer-events: none;
}
.focus-input100::before {
  content: "";
  display: block;
  position: absolute;
  bottom: -1px;
  left: 0;
  width: 0;
  height: 1px;
  -webkit-transition: all 0.6s;
  -o-transition: all 0.6s;
  -moz-transition: all 0.6s;
  transition: all 0.6s;
  background: #57b846;
}
/*---------------------------------------------*/
input.input100 {
  height: 45px;
}
.input100:focus + .focus-input100::before {
  width: 100%;
}
.has-val.input100 + .focus-input100::before {
  width: 100%;
}
/*==================================================================
[ Restyle Checkbox ]*/
.input-checkbox100 {
  display: none;
}
.label-checkbox100 {
  font-family: Poppins-Regular;
  font-size: 13px;
  color: #999999;
  line-height: 1.4;
  display: block;
  position: relative;
  padding-left: 26px;
  cursor: pointer;
}
.label-checkbox100::before {
  content: "\f00c";
  font-family: FontAwesome;
  font-size: 13px;
  color: transparent;
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  justify-content: center;
  align-items: center;
  position: absolute;
  width: 18px;
  height: 18px;
  border-radius: 2px;
  background: #fff;
  border: 1px solid #e6e6e6;
  left: 0;
  top: 50%;
  -webkit-transform: translateY(-50%);
  -moz-transform: translateY(-50%);
  -ms-transform: translateY(-50%);
  -o-transform: translateY(-50%);
  transform: translateY(-50%);
}
.input-checkbox100:checked + .label-checkbox100::before {
  color: #57b846;
}
/*------------------------------------------------------------------
[ Button ]*/
.container-login100-form-btn {
  width: 100%;
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  flex-wrap: wrap;
}
.login100-form-btn {
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 0 20px;
  min-width: 160px;
  height: 50px;
  background-color: #57b846;
  border-radius: 25px;
  font-family: Poppins-Regular;
  font-size: 16px;
  color: #fff;
  line-height: 1.2;
  -webkit-transition: all 0.4s;
  -o-transition: all 0.4s;
  -moz-transition: all 0.4s;
  transition: all 0.4s;
}
.login100-form-btn:hover {
  background-color: #333333;
}
/*------------------------------------------------------------------
[ Responsive ]*/
@media (max-width: 576px) {
  .login100-form {
    padding: 43px 15px 57px 117px;
  }
}
@media (max-width: 480px) {
  .login100-form {
    padding: 43px 15px 57px 15px;
  }
  .label-input100 {
    text-align: left;
    position: unset;
    top: unset;
    left: unset;
    width: 100%;
    padding: 0 5px;
  }
}
/*------------------------------------------------------------------
[ Alert validate ]*/
.validate-input {
  position: relative;
}
.alert-validate::before {
  content: attr(data-validate);
  position: absolute;
  max-width: 70%;
  background-color: #fff;
  border: 1px solid #c80000;
  border-radius: 2px;
  padding: 4px 25px 4px 10px;
  top: 50%;
  -webkit-transform: translateY(-50%);
  -moz-transform: translateY(-50%);
  -ms-transform: translateY(-50%);
  -o-transform: translateY(-50%);
  transform: translateY(-50%);
  right: 2px;
  pointer-events: none;
  font-family: Poppins-Medium;
  color: #c80000;
  font-size: 13px;
  line-height: 1.4;
  text-align: left;
  visibility: hidden;
  opacity: 0;
  -webkit-transition: opacity 0.4s;
  -o-transition: opacity 0.4s;
  -moz-transition: opacity 0.4s;
  transition: opacity 0.4s;
}
.alert-validate::after {
  content: "\f06a";
  font-family: FontAwesome;
  display: block;
  position: absolute;
  color: #c80000;
  font-size: 15px;
  top: 50%;
  -webkit-transform: translateY(-50%);
  -moz-transform: translateY(-50%);
  -ms-transform: translateY(-50%);
  -o-transform: translateY(-50%);
  transform: translateY(-50%);
  right: 8px;
}
.alert-validate:hover:before {
  visibility: visible;
  opacity: 1;
}
@media (max-width: 992px) {
  .alert-validate::before {
    visibility: visible;
    opacity: 1;
  }
}
/*[ SHAPE ]
///////////////////////////////////////////////////////////
*/
/*[ Display ]
-----------------------------------------------------------
*/
.dis-none {display: none;}
.dis-block {display: block;}
.dis-inline {display: inline;}
.dis-inline-block {display: inline-block;}
.dis-flex {
	display: -webkit-box;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
}
/*[ Position ]
-----------------------------------------------------------
*/
.pos-relative {position: relative;}
.pos-absolute {position: absolute;}
.pos-fixed {position: fixed;}
/*[ float ]
-----------------------------------------------------------
*/
.float-l {float: left;}
.float-r {float: right;}
/*[ Width & Height ]
-----------------------------------------------------------
*/
.sizefull {
	width: 100%;
	height: 100%;
}
.w-full {width: 100%;}
.h-full {height: 100%;}
.max-w-full {max-width: 100%;}
.max-h-full {max-height: 100%;}
.min-w-full {min-width: 100%;}
.min-h-full {min-height: 100%;}
/*[ Top Bottom Left Right ]
-----------------------------------------------------------
*/
.top-0 {top: 0;}
.bottom-0 {bottom: 0;}
.left-0 {left: 0;}
.right-0 {right: 0;}
.top-auto {top: auto;}
.bottom-auto {bottom: auto;}
.left-auto {left: auto;}
.right-auto {right: auto;}
/*[ Opacity ]
-----------------------------------------------------------
*/
.op-0-0 {opacity: 0;}
.op-0-1 {opacity: 0.1;}
.op-0-2 {opacity: 0.2;}
.op-0-3 {opacity: 0.3;}
.op-0-4 {opacity: 0.4;}
.op-0-5 {opacity: 0.5;}
.op-0-6 {opacity: 0.6;}
.op-0-7 {opacity: 0.7;}
.op-0-8 {opacity: 0.8;}
.op-0-9 {opacity: 0.9;}
.op-1-0 {opacity: 1;}
/*[ Background ]
-----------------------------------------------------------
*/
.bgwhite {background-color: white;}
.bgblack {background-color: black;}
/*[ Wrap Picture ]
-----------------------------------------------------------
*/
.wrap-pic-w img {width: 100%;}
.wrap-pic-max-w img {max-width: 100%;}
/* ------------------------------------ */
.wrap-pic-h img {height: 100%;}
.wrap-pic-max-h img {max-height: 100%;}
/* ------------------------------------ */
.wrap-pic-cir {
	border-radius: 50%;
	overflow: hidden;
}
.wrap-pic-cir img {
	width: 100%;
}
/*[ Hover ]
-----------------------------------------------------------
*/
.hov-pointer:hover {cursor: pointer;}
/* ------------------------------------ */
.hov-img-zoom {
	display: block;
	overflow: hidden;
}
.hov-img-zoom img{
	width: 100%;
	-webkit-transition: all 0.6s;
    -o-transition: all 0.6s;
    -moz-transition: all 0.6s;
    transition: all 0.6s;
}
.hov-img-zoom:hover img {
	-webkit-transform: scale(1.1);
  	-moz-transform: scale(1.1);
  	-ms-transform: scale(1.1);
  	-o-transform: scale(1.1);
	transform: scale(1.1);
}
/*[  ]
-----------------------------------------------------------
*/
.bo-cir {border-radius: 50%;}
.of-hidden {overflow: hidden;}
.visible-false {visibility: hidden;}
.visible-true {visibility: visible;}
/*[ Transition ]
-----------------------------------------------------------
*/
.trans-0-1 {
	-webkit-transition: all 0.1s;
    -o-transition: all 0.1s;
    -moz-transition: all 0.1s;
    transition: all 0.1s;
}
.trans-0-2 {
	-webkit-transition: all 0.2s;
    -o-transition: all 0.2s;
    -moz-transition: all 0.2s;
    transition: all 0.2s;
}
.trans-0-3 {
	-webkit-transition: all 0.3s;
    -o-transition: all 0.3s;
    -moz-transition: all 0.3s;
    transition: all 0.3s;
}
.trans-0-4 {
	-webkit-transition: all 0.4s;
    -o-transition: all 0.4s;
    -moz-transition: all 0.4s;
    transition: all 0.4s;
}
.trans-0-5 {
	-webkit-transition: all 0.5s;
    -o-transition: all 0.5s;
    -moz-transition: all 0.5s;
    transition: all 0.5s;
}
.trans-0-6 {
	-webkit-transition: all 0.6s;
    -o-transition: all 0.6s;
    -moz-transition: all 0.6s;
    transition: all 0.6s;
}
.trans-0-9 {
	-webkit-transition: all 0.9s;
    -o-transition: all 0.9s;
    -moz-transition: all 0.9s;
    transition: all 0.9s;
}
.trans-1-0 {
	-webkit-transition: all 1s;
    -o-transition: all 1s;
    -moz-transition: all 1s;
    transition: all 1s;
}
/*[ Layout ]
///////////////////////////////////////////////////////////
*/
/*[ Flex ]
-----------------------------------------------------------
*/
/* ------------------------------------ */
.flex-w {
	display: -webkit-box;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-flex-wrap: wrap;
	-moz-flex-wrap: wrap;
	-ms-flex-wrap: wrap;
	-o-flex-wrap: wrap;
	flex-wrap: wrap;
}
/* ------------------------------------ */
.flex-l {
	display: -webkit-box;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	justify-content: flex-start;
}
.flex-r {
	display: -webkit-box;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	justify-content: flex-end;
}
.flex-c {
	display: -webkit-box;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	justify-content: center;
}
.flex-sa {
	display: -webkit-box;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	justify-content: space-around;
}
.flex-sb {
	display: -webkit-box;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	justify-content: space-between;
}
/* ------------------------------------ */
.flex-t {
	display: -webkit-box;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	-ms-align-items: flex-start;
	align-items: flex-start;
}
.flex-b {
	display: -webkit-box;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	-ms-align-items: flex-end;
	align-items: flex-end;
}
.flex-m {
	display: -webkit-box;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	-ms-align-items: center;
	align-items: center;
}
.flex-str {
	display: -webkit-box;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	-ms-align-items: stretch;
	align-items: stretch;
}
/* ------------------------------------ */
.flex-row {
	display: -webkit-box;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-flex-direction: row;
	-moz-flex-direction: row;
	-ms-flex-direction: row;
	-o-flex-direction: row;
	flex-direction: row;
}
.flex-row-rev {
	display: -webkit-box;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-flex-direction: row-reverse;
	-moz-flex-direction: row-reverse;
	-ms-flex-direction: row-reverse;
	-o-flex-direction: row-reverse;
	flex-direction: row-reverse;
}
.flex-col {
	display: -webkit-box;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-flex-direction: column;
	-moz-flex-direction: column;
	-ms-flex-direction: column;
	-o-flex-direction: column;
	flex-direction: column;
}
.flex-col-rev {
	display: -webkit-box;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-flex-direction: column-reverse;
	-moz-flex-direction: column-reverse;
	-ms-flex-direction: column-reverse;
	-o-flex-direction: column-reverse;
	flex-direction: column-reverse;
}
/* ------------------------------------ */
.flex-c-m {
	display: -webkit-box;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	justify-content: center;
	-ms-align-items: center;
	align-items: center;
}
.flex-c-t {
	display: -webkit-box;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	justify-content: center;
	-ms-align-items: flex-start;
	align-items: flex-start;
}
.flex-c-b {
	display: -webkit-box;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	justify-content: center;
	-ms-align-items: flex-end;
	align-items: flex-end;
}
.flex-c-str {
	display: -webkit-box;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	justify-content: center;
	-ms-align-items: stretch;
	align-items: stretch;
}
.flex-l-m {
	display: -webkit-box;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	justify-content: flex-start;
	-ms-align-items: center;
	align-items: center;
}
.flex-r-m {
	display: -webkit-box;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	justify-content: flex-end;
	-ms-align-items: center;
	align-items: center;
}
.flex-sa-m {
	display: -webkit-box;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	justify-content: space-around;
	-ms-align-items: center;
	align-items: center;
}
.flex-sb-m {
	display: -webkit-box;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	justify-content: space-between;
	-ms-align-items: center;
	align-items: center;
}
/* ------------------------------------ */
.flex-col-l {
	display: -webkit-box;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-flex-direction: column;
	-moz-flex-direction: column;
	-ms-flex-direction: column;
	-o-flex-direction: column;
	flex-direction: column;
	-ms-align-items: flex-start;
	align-items: flex-start;
}
.flex-col-r {
	display: -webkit-box;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-flex-direction: column;
	-moz-flex-direction: column;
	-ms-flex-direction: column;
	-o-flex-direction: column;
	flex-direction: column;
	-ms-align-items: flex-end;
	align-items: flex-end;
}
.flex-col-c {
	display: -webkit-box;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-flex-direction: column;
	-moz-flex-direction: column;
	-ms-flex-direction: column;
	-o-flex-direction: column;
	flex-direction: column;
	-ms-align-items: center;
	align-items: center;
}
.flex-col-l-m {
	display: -webkit-box;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-flex-direction: column;
	-moz-flex-direction: column;
	-ms-flex-direction: column;
	-o-flex-direction: column;
	flex-direction: column;
	-ms-align-items: flex-start;
	align-items: flex-start;
	justify-content: center;
}
.flex-col-r-m {
	display: -webkit-box;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-flex-direction: column;
	-moz-flex-direction: column;
	-ms-flex-direction: column;
	-o-flex-direction: column;
	flex-direction: column;
	-ms-align-items: flex-end;
	align-items: flex-end;
	justify-content: center;
}
.flex-col-c-m {
	display: -webkit-box;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-flex-direction: column;
	-moz-flex-direction: column;
	-ms-flex-direction: column;
	-o-flex-direction: column;
	flex-direction: column;
	-ms-align-items: center;
	align-items: center;
	justify-content: center;
}
.flex-col-str {
	display: -webkit-box;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-flex-direction: column;
	-moz-flex-direction: column;
	-ms-flex-direction: column;
	-o-flex-direction: column;
	flex-direction: column;
	-ms-align-items: stretch;
	align-items: stretch;
}
.flex-col-sb {
	display: -webkit-box;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-flex-direction: column;
	-moz-flex-direction: column;
	-ms-flex-direction: column;
	-o-flex-direction: column;
	flex-direction: column;
	justify-content: space-between;
}
/* ------------------------------------ */
.flex-col-rev-l {
	display: -webkit-box;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-flex-direction: column-reverse;
	-moz-flex-direction: column-reverse;
	-ms-flex-direction: column-reverse;
	-o-flex-direction: column-reverse;
	flex-direction: column-reverse;
	-ms-align-items: flex-start;
	align-items: flex-start;
}
.flex-col-rev-r {
	display: -webkit-box;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-flex-direction: column-reverse;
	-moz-flex-direction: column-reverse;
	-ms-flex-direction: column-reverse;
	-o-flex-direction: column-reverse;
	flex-direction: column-reverse;
	-ms-align-items: flex-end;
	align-items: flex-end;
}
.flex-col-rev-c {
	display: -webkit-box;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-flex-direction: column-reverse;
	-moz-flex-direction: column-reverse;
	-ms-flex-direction: column-reverse;
	-o-flex-direction: column-reverse;
	flex-direction: column-reverse;
	-ms-align-items: center;
	align-items: center;
}
.flex-col-rev-str {
	display: -webkit-box;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-flex-direction: column-reverse;
	-moz-flex-direction: column-reverse;
	-ms-flex-direction: column-reverse;
	-o-flex-direction: column-reverse;
	flex-direction: column-reverse;
	-ms-align-items: stretch;
	align-items: stretch;
}
/*[ Absolute ]
-----------------------------------------------------------
*/
.ab-c-m {
	position: absolute;
	top: 50%;
	left: 50%;
	-webkit-transform: translate(-50%, -50%);
  	-moz-transform: translate(-50%, -50%);
  	-ms-transform: translate(-50%, -50%);
  	-o-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
}
.ab-c-t {
	position: absolute;
	top: 0px;
	left: 50%;
	-webkit-transform: translateX(-50%);
  	-moz-transform: translateX(-50%);
  	-ms-transform: translateX(-50%);
  	-o-transform: translateX(-50%);
	transform: translateX(-50%);
}
.ab-c-b {
	position: absolute;
	bottom: 0px;
	left: 50%;
	-webkit-transform: translateX(-50%);
  	-moz-transform: translateX(-50%);
  	-ms-transform: translateX(-50%);
  	-o-transform: translateX(-50%);
	transform: translateX(-50%);
}
.ab-l-m {
	position: absolute;
	left: 0px;
	top: 50%;
	-webkit-transform: translateY(-50%);
  	-moz-transform: translateY(-50%);
  	-ms-transform: translateY(-50%);
  	-o-transform: translateY(-50%);
	transform: translateY(-50%);
}
.ab-r-m {
	position: absolute;
	right: 0px;
	top: 50%;
	-webkit-transform: translateY(-50%);
  	-moz-transform: translateY(-50%);
  	-ms-transform: translateY(-50%);
  	-o-transform: translateY(-50%);
	transform: translateY(-50%);
}
.ab-t-l {
	position: absolute;
	left: 0px;
	top: 0px;
}
.ab-t-r {
	position: absolute;
	right: 0px;
	top: 0px;
}
.ab-b-l {
	position: absolute;
	left: 0px;
	bottom: 0px;
}
.ab-b-r {
	position: absolute;
	right: 0px;
	bottom: 0px;
}
</style>
</head>
<body>


<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title" >
				 
					<span class="login100-form-title-1">
						Sign In
					</span>
				</div>

				<form class="login100-form validate-form" action="admin/list2" method="get">
					<div class="wrap-input100 validate-input m-b-26" data-validate="Username is required" >
						<span class="label-input100">Associate Id</span>
						<input class="input100" type="text" name="username" placeholder="Enter Associate id" required="this" id="username">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
						<span class="label-input100">Password</span>
						<input class="input100" type="password" name="password" placeholder="Enter password" id="password">
						<span class="focus-input100"></span>
					</div>

					<div class="flex-sb-m w-full p-b-30">
						<div >
							
							<label  for="ckb1">
							
							</label>
						</div>

						<div>
							<a href="admin/showForm" class="txt1">
								or click here to Register?
							</a>
						</div>
					</div>

					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Login
						</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>







</body>
</html>

