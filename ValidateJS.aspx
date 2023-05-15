<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidateJS.aspx.cs" Inherits="WebApplication1.ValidateJS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ValidateJS</title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <script src="Common/validate.js"></script>
    <script>
        function validating() {

            let username = document.getElementById("txtUsername").value;

            let pin = document.getElementById("txtPin").value;

            let state = document.getElementById("txtStates").value;

            let text;

            let txtPin;

            if (username.length > 8 || username.length < 6) {

                text = " Username length should be between 6-8 characters";

            }
            else {

                text = "Username is Ok";

            }
            document.getElementById("txtOutput").innerHTML = text;

            for (var i = 0; i < pin.length; i++) {

                var char1 = pin.charAt(i);

                var cc = char1.charCodeAt(0);

                if (pin.length <= 0) {

                    text = " Type Pin";

                }

                if ((cc > 47 && cc < 58) || (cc > 64 && cc < 91) || (cc > 96 && cc < 123)) {

                    textPin = "Pin is fine";

                } else {

                    textPin = "Pin is not alphanumeric";
                }

                document.getElementById("txtOutputPin").innerHTML = textPin;
            }

            if (state == "") {

                empty = "No state selected";

            }

        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <section class="vh-100" style="background-color: #eee;">
            <div class="container h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-lg-12 col-xl-11">
                        <div class="card text-black" style="border-radius: 25px;">
                            <div class="card-body p-md-5">
                                <div class="row justify-content-center">
                                    <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

                                        <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Sign up</p>

                                        <form class="mx-1 mx-md-4">

                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <input type="text" id="txtUsername" class="form-control" />
                                                    <label class="form-label" for="name">Your Name</label>
                                                </div>
                                            </div>



                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <input type="password" id="txtStates class="form-control" />
                                                    <label class="form-label" for="password">Pin</label>
                                                </div>
                                            </div>

                                            <div class="dropdown">

                                                <select id="txtStates>
                                                    <option class="dropdown-item">Action</option>
                                                    <option class="dropdown-item">Another action</option>
                                                    <option class="dropdown-item">Something else here</option>
                                                </select>
                                            </div>

                                            <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                                                <button type="button" class="btn btn-primary btn-lg"  onclick="validating()" id="btnValidate">Register</button>
                                            </div>

                                            <h4 id="txtOutput"></h4>

                                            <h4 id="txtOutputPin"></h4>

                                            <h3>Radio Buttons</h3>
                                            <div>
 <input  type="radio" id="Milk" name="Food" value="Milk">

                                            <label class="form-label" for="Milk">Milk</labe>
                                            </div>
                                            <div>
<input  type="radio" id="Butter" name="Food" value="Butter">

                                            <label class="form-label"  for="Butter">Butter</label>
                                            </div>
                                           <div>
                                                <input  type="radio" id="Cheese" name="Food" value="Cheese">

                                              <label class="form-label" for="Cheese">Cheese</label>
                                           </div>
                                                
                                                

                                            
                                               

                                           
                                        </form>

                                    </div>
                                    <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

                                        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/draw1.webp"
                                            class="img-fluid" alt="Sample image">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </form>
</body>
</html>
