
<form id="userForm" method="post" style="padding:20px">

    <div class="form-group">
        <label for="username">Username</label>
        <input type="email" class="form-control" id="username" aria-describedby="username" placeholder="Enter username" required>
    </div>
    <div class="form-group">
        <label for="email">Email address</label>
        <input type="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email" required>
    </div>

    <div class="form-group">
        <label for="confirmEmail">Confirm Email address</label>
        <input type="email" class="form-control" id="confirmEmail" aria-describedby="emailHelp" placeholder="Confirm email" required>
    </div>

    <div class="form-group">
        <label for="password">Password</label>
        <input type="password" class="form-control" id="password" placeholder="Password" required>
    </div>

    <div class="form-group">
        <label for="confirmPassword">Confirm Password</label>
        <input type="password" class="form-control" id="confirmPassword" placeholder="Confirm Password" required>
    </div>
    <button type="submit" id="signUp" class="btn btn-primary">Submit</button>
</form>
