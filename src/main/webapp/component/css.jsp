<style>
.contact {
  background-size: cover;
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-position: center;
  transition: background 0.6s ease;
  animation: fadeIn 1s ease-in-out forwards;
}

.contact:hover {
}

@keyframes fadeIn {
  from {
    opacity: 0;
  }
  to {
    opacity: 1;
  }
}
@keyframes fadeOut {
  from {
    opacity: 1;
  }
  to {
    opacity: 0;
  }
}
.appointment {
  background-size: cover;
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-position: center;
  transition: background 0.6s ease;
  animation: fadeIn 1s ease-in-out forwards;
}

.appointment:hover {
}

@keyframes fadeIn {
  from {
    opacity: 0;
  }
  to {
    opacity: 1;
  }
}
@keyframes fadeOut {
  from {
    opacity: 1;
  }
  to {
    opacity: 0;
  }
}


.backImg{
	height: 30vh;
	background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.8)),url(image/appoint_design.jpg);
	background-position: 50% 100%;
	background-repeat: no-repeat;
	background-attachment: fixed;
	text-align: center;
	color: #fff;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
    background-size: cover;
    background-position: center;
}

.doctor {
  background: linear-gradient(rgba(255, 255, 255, 0.5), rgba(255, 255, 255, 0.5)),url("image/doc_1.jpg");
  background-size: cover;
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-position: center;
  transition: background 0.6s ease;
  animation: fadeIn 1s ease-in-out forwards;
}

.doctor:hover {
  background-image: linear-gradient(rgba(255, 255, 255, 0.5), rgba(255, 255, 255, 0.5)), url("image/doc_1.jpg");
}

@keyframes fadeIn {
  from {
    opacity: 0;
  }
  to {
    opacity: 1;
  }
}
@keyframes fadeOut {
  from {
    opacity: 1;
  }
  to {
    opacity: 0;
  }
}


.user {
  background: linear-gradient(rgba(255, 255, 255, 0.5), rgba(255, 255, 255, 0.5)),url("image/img_4.jpeg");
  background-size: cover;
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-position: center;
  transition: background 0.6s ease;
  animation: fadeIn 1s ease-in-out forwards;
}

.user:hover {
  background-image: linear-gradient(rgba(255, 255, 255, 0.5), rgba(255, 255, 255, 0.5)), url("image/img_4.jpeg");
}

@keyframes fadeIn {
  from {
    opacity: 0;
  }
  to {
    opacity: 1;
  }
}
@keyframes fadeOut {
  from {
    opacity: 1;
  }
  to {
    opacity: 0;
  }
}


.admin {
  background: linear-gradient(rgba(255, 255, 255, 0.5), rgba(255, 255, 255, 0.5)),url("image/admin.png");
  background-size: cover;
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-position: center;
  transition: background 0.6s ease;
  animation: fadeIn 1s ease-in-out forwards;
}

.admin:hover {
  background-image: linear-gradient(rgba(255, 255, 255, 0.5), rgba(255, 255, 255, 0.5)), url("image/admin.png");
}

@keyframes fadeIn {
  from {
    opacity: 0;
  }
  to {
    opacity: 1;
  }
}
@keyframes fadeOut {
  from {
    opacity: 1;
  }
  to {
    opacity: 0;
  }
}


.register {
  background: linear-gradient(rgba(255, 255, 255, 0.5), rgba(255, 255, 255, 0.5)),url("image/img_4.jpeg");
  background-size: cover;
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-position: center;
  transition: background 0.6s ease;
  animation: fadeIn 1s ease-in-out forwards;
}

.register:hover {
  background-image: linear-gradient(rgba(255, 255, 255, 0.5), rgba(255, 255, 255, 0.5)), url("image/img_4.jpeg");
}

@keyframes fadeIn {
  from {
    opacity: 0;
  }
  to {
    opacity: 1;
  }
}
@keyframes fadeOut {
  from {
    opacity: 1;
  }
  to {
    opacity: 0;
  }
}

.home {
  background: linear-gradient(rgba(255, 255, 255, 0.5), rgba(255, 255, 255, 0.5))
  background-size: cover;
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-position: center;
  transition: background 0.6s ease;
  animation: fadeIn 1s ease-in-out forwards;
}

.home:hover {
  background-image: linear-gradient(rgba(255, 255, 255, 0.5), rgba(255, 255, 255, 0.5))

@keyframes fadeIn {
  from {
    opacity: 0;
  }
  to {
    opacity: 1;
  }
}
@keyframes fadeOut {
  from {
    opacity: 1;
  }
  to {
    opacity: 0;
  }
}



/*--------------------------------------------------------------
# Doctors
--------------------------------------------------------------*/
.doctors {
  background: #fff;
}

.doctors .member {
  position: relative;
  box-shadow: 0px 2px 15px rgba(44, 73, 100, 0.08);
  padding: 30px;
  border-radius: 10px;
}

.doctors .member .pic {
  overflow: hidden;
  width: 180px;
  border-radius: 50%;
}

.doctors .member .pic img {
  transition: ease-in-out 0.3s;
}

.doctors .member:hover img {
  transform: scale(1.1);
}

.doctors .member .member-info {
  padding-left: 30px;
}

.doctors .member h4 {
  font-weight: 700;
  margin-bottom: 5px;
  font-size: 20px;
  color: #2c4964;
}

.doctors .member span {
  display: block;
  font-size: 15px;
  padding-bottom: 10px;
  position: relative;
  font-weight: 500;
}

.doctors .member span::after {
  content: '';
  position: absolute;
  display: block;
  width: 50px;
  height: 1px;
  background: #b2c8dd;
  bottom: 0;
  left: 0;
}

.doctors .member p {
  margin: 10px 0 0 0;
  font-size: 14px;
}

.doctors .member .social {
  margin-top: 12px;
  display: flex;
  align-items: center;
  justify-content: flex-start;
}

.doctors .member .social a {
  transition: ease-in-out 0.3s;
  display: flex;
  align-items: center;
  justify-content: center;
  border-radius: 50px;
  width: 32px;
  height: 32px;
  background: #a0bcd5;
}

.doctors .member .social a i {
  color: #fff;
  font-size: 16px;
  margin: 0 2px;
}

.doctors .member .social a:hover {
  background: #3fbbc0;
}

.doctors .member .social a + a {
  margin-left: 8px;
}

</style>