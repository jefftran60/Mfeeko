<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Snoopy Love</title>
  <style>
    body {
      margin: 0;
      padding: 0;
      background-color: #ffe4e6;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      overflow: hidden;
      font-family: Arial, sans-serif;
    }
    .snoopy {
      position: absolute;
      bottom: 10px;
      height: 200px;
      animation: moveSnoopy 4s linear forwards;
    }
    @keyframes moveSnoopy {
      from { left: -200px; }
      to { left: 100vw; }
    }
    .message {
      display: none;
      font-size: 3rem;
      font-weight: bold;
      color: #e11d48;
      animation: fadeIn 2s forwards;
    }
    @keyframes fadeIn {
      from { opacity: 0; }
      to { opacity: 1; }
    }
  </style>
</head>
<body>
  <img
    id="snoopy"
    src="https://upload.wikimedia.org/wikipedia/en/5/53/Snoopy_Peanuts.png"
    alt="Snoopy"
    class="snoopy"
  />
  <div id="message" class="message">I Love You ❤️</div>

  <script>
    setTimeout(() => {
      document.getElementById('snoopy').style.display = 'none';
      const message = document.getElementById('message');
      message.style.display = 'block';
    }, 4000);
  </script>
</body>
</html>
