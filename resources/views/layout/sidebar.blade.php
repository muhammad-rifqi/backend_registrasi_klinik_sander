
<!-- SIDEBAR -->
<div class="sidebar">
    <div class="logo">
        MyAdmin
    </div>

    <ul class="menu">
        <li class="{{ request()->is('dashboard') ? 'active' : '' }}">
            <a href="/dashboard">🏠 Dashboard</a>
        </li>

        <li class="{{ request()->is('patient') ? 'active' : '' }}">
            <a href="/patient">👥 List Patient</a>
        </li>

        <li class="{{ request()->is('setting') ? 'active' : '' }}">
            <a href="/setting">⚙️ Account Settings</a>
        </li>
        <li><a href="#" onclick="logoutAction()">🚪 Logout</a></li>
    </ul>
</div>