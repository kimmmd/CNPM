console.log("login.js loaded");

function login(role) {
  console.log("Login as:", role);

  if (role === "admin") {
    window.location.href = "admin-dashboard.html";
  } else if (role === "lecturer") {
    window.location.href = "lecturer-dashboard.html";
  } else if (role === "student") {
    window.location.href = "student-dashboard.html";
  }
}
