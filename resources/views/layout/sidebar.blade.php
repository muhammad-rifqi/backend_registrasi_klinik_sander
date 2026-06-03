
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
            <a href="/patient">👥 Patient Reg</a>
        </li>

        <!-- <li class="{{ request()->is('history') ? 'active' : '' }}">
            <a href="/history">👥 History Patient</a>
        </li> -->

        <li class="{{ request()->is('setting') ? 'active' : '' }}">
            <a href="/setting">⚙️ Account Settings</a>
        </li>
        <li><a href="#" onclick="logoutAction()">🚪 Logout</a></li>
    </ul>
</div>