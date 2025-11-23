<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Simple Registration Form</title>
  <style>
    :root{
      --bg:#f6f8fb;
      --card:#ffffff;
      --accent:#4f46e5;
      --muted:#6b7280;
      --success:#10b981;
      --danger:#ef4444;
      font-family: Inter, ui-sans-serif, system-ui, -apple-system, "Segoe UI", Roboto, "Helvetica Neue", Arial;
    }
    *{box-sizing:border-box}
    html,body{height:100%}
    body{
      margin:0;
      background:linear-gradient(180deg,var(--bg),#eef2ff 60%);
      display:flex;align-items:center;justify-content:center;padding:32px;
      color:#0f172a;
    }
    .container{
      width:100%;max-width:880px;background:transparent;display:grid;grid-template-columns:1fr 420px;gap:32px;
    }
    .left{
      padding:28px;background:linear-gradient(180deg,rgba(255,255,255,0.8),rgba(255,255,255,0.65));
      border-radius:16px;box-shadow:0 10px 30px rgba(15,23,42,0.08);backdrop-filter:blur(6px);
      display:flex;flex-direction:column;gap:16px;align-items:flex-start;justify-content:center;
    }
    .brand{display:flex;align-items:center;gap:12px}
    .logo{width:56px;height:56px;border-radius:12px;background:linear-gradient(135deg,var(--accent),#7c3aed);display:grid;place-items:center;color:white;font-weight:700}
    h1{margin:0;font-size:20px}
    p.lead{margin:0;color:var(--muted)}

    .card{
      padding:28px;border-radius:12px;background:var(--card);box-shadow:0 8px 24px rgba(2,6,23,0.06);
    }

    form{display:grid;gap:12px}
    .row{display:flex;gap:12px}
    .col{flex:1}
    label{display:block;font-size:13px;color:var(--muted);margin-bottom:6px}
    input[type="text"],input[type="email"],input[type="password"],select{
      width:100%;padding:10px 12px;border-radius:8px;border:1px solid #e6e9f2;background:#fbfdff;font-size:15px;
      outline:none;transition:box-shadow .15s,border-color .15s
    }
    input:focus,select:focus{box-shadow:0 6px 18px rgba(79,70,229,0.08);border-color:rgba(79,70,229,0.45)}
    .help{font-size:12px;color:var(--muted)}
    .actions{display:flex;align-items:center;justify-content:space-between;margin-top:6px}
    .btn{
      background:var(--accent);color:white;padding:10px 14px;border-radius:10px;border:none;font-weight:600;cursor:pointer;
      box-shadow:0 6px 18px rgba(79,70,229,0.15)
    }
    .btn.ghost{background:transparent;color:var(--accent);box-shadow:none;border:1px solid rgba(79,70,229,0.12)}
    .toggle-pass{display:inline-flex;align-items:center;gap:8px;font-size:13px;color:var(--muted);cursor:pointer}

    .note{font-size:13px;color:var(--muted);margin-top:8px}

    .success{
      display:none;padding:12px;border-radius:10px;background:linear-gradient(90deg,rgba(16,185,129,0.08),rgba(16,185,129,0.04));border:1px solid rgba(16,185,129,0.12);color:var(--success);
    }
    .error{display:none;padding:10px;border-radius:8px;background:linear-gradient(90deg,rgba(239,68,68,0.06),rgba(239,68,68,0.03));border:1px solid rgba(239,68,68,0.08);color:var(--danger);font-size:13px}

    .footer-small{font-size:13px;color:var(--muted)}

    @media (max-width:900px){
      .container{grid-template-columns:1fr;}
      .left{order:2}
    }
  </style>
</head>
<body>
  <main class="container">
    <section class="left card">
      <div class="brand">
        <div class="logo">Rg</div>
        <div>
          <h1>Register quickly</h1>
          <p class="lead">Create your account — it only takes a minute.</p>
        </div>
      </div>
      <div class="note">By creating an account you agree to our <strong>Terms</strong> and <strong>Privacy Policy</strong>.</div>
      <div style="margin-top:auto" class="footer-small">Already have an account? <a href="#" onclick="alert('Replace with link to sign in')">Sign in</a></div>
    </section>

    <section class="card">
      <div id="successMsg" class="success">✅ Account created successfully!</div>
      <form id="regForm" novalidate>
        <div class="row">
          <div class="col">
            <label for="firstName">First name</label>
            <input id="firstName" name="firstName" type="text" placeholder="Asha" required />
          </div>
          <div class="col">
            <label for="lastName">Last name</label>
            <input id="lastName" name="lastName" type="text" placeholder="Kumar" required />
          </div>
        </div>

        <div>
          <label for="email">Email address</label>
          <input id="email" name="email" type="email" placeholder="you@example.com" required />
          <div id="emailHelp" class="help">We'll never share your email.</div>
        </div>

        <div class="row">
          <div class="col">
            <label for="password">Password</label>
            <input id="password" name="password" type="password" placeholder="Choose a strong password" minlength="8" required />
          </div>
          <div style="width:120px;display:flex;flex-direction:column;justify-content:end">
            <label style="visibility:hidden">.</label>
            <div class="toggle-pass" onclick="togglePassword()">👁️ Show</div>
          </div>
        </div>

        <div>
          <label for="role">I'm a</label>
          <select id="role" name="role" required>
            <option value="">Select...</option>
            <option>Student</option>
            <option>Professional</option>
            <option>Teacher</option>
            <option>Other</option>
          </select>
        </div>

        <div>
          <label for="about">About (optional)</label>
          <input id="about" name="about" type="text" placeholder="A short note about you" />
        </div>

        <div class="actions">
          <div style="display:flex;gap:10px;align-items:center">
            <input type="checkbox" id="terms" required />
            <label for="terms" class="help">I agree to the terms</label>
          </div>
          <div>
            <button type="button" class="btn ghost" onclick="resetForm()">Reset</button>
            <button type="submit" class="btn">Create account</button>
          </div>
        </div>

        <div id="errorMsg" class="error"></div>
      </form>
    </section>
  </main>

  <script>
    const form = document.getElementById('regForm');
    const success = document.getElementById('successMsg');
    const error = document.getElementById('errorMsg');

    form.addEventListener('submit', (e) => {
      e.preventDefault();
      error.style.display = 'none';
      success.style.display = 'none';

      const data = new FormData(form);
      const firstName = data.get('firstName')?.trim();
      const email = data.get('email')?.trim();
      const password = data.get('password') || '';
      const role = data.get('role');
      const terms = document.getElementById('terms').checked;

      // simple validation
      if (!firstName || !email || !password || !role) {
        showError('Please fill all required fields.');
        return;
      }
      if (!validateEmail(email)){
        showError('Please enter a valid email address.');
        return;
      }
      if (password.length < 8){
        showError('Password must be at least 8 characters long.');
        return;
      }
      if (!terms){
        showError('You must agree to the terms to continue.');
        return;
      }

      // simulate success
      success.style.display = 'block';
      form.reset();
      setTimeout(()=> success.style.display = 'none', 4000);
    });

    function showError(msg){
      error.textContent = msg;
      error.style.display = 'block';
    }

    function validateEmail(email){
      return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email);
    }

    function togglePassword(){
      const p = document.getElementById('password');
      const t = document.querySelector('.toggle-pass');
      if (p.type === 'password'){ p.type = 'text'; t.textContent = '🙈 Hide'; }
      else { p.type = 'password'; t.textContent = '👁️ Show'; }
    }

    function resetForm(){
      form.reset();
      error.style.display = 'none';
      success.style.display = 'none';
    }
  </script>
</body>
</html>
