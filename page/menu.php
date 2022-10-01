<div class="side-menu-wrapper">
    <div class="dropdown-box-username">
        <div class="username" onclick="toggleDropDownBoxUsername()">
            <div class="left">
                <?php echo $_SESSION['fn'];?>
            </div>
            <div class="right">
                <span><i class="fa fa-caret-down" aria-hidden="true"></i></span>
            </div>
        </div>
        <div class="dropdown">
            <a href="profile">Account Setting</a>
        </div>
    </div>
</div>

<?php 
    if($_SESSION['level'] === 'Student'){
        echo "
            <div class='side-menu-navigation-mobile'>
                <a href='dashboard'>
                    <div class='row navigator'>
                        <div class='col-xs-3 icon'>
                            <span><i class='fa fa-home' aria-hidden='true'></i></span>
                        </div>
                        <div class='col-xs-9 navigator-text'>
                            <span>Dashboard</span>
                        </div>
                    </div>
                </a>
                <a href='course'>
                    <div class='row navigator'>
                        <div class='col-xs-3 icon'>
                            <span><i class='fa fa-home' aria-hidden='true'></i></span>
                        </div>
                        <div class='col-xs-9 navigator-text'>
                            <span>Courses</span>
                        </div>
                    </div>
                </a>
                <a href='my_course'>
                    <div class='row navigator'>
                        <div class='col-xs-3 icon'>
                            <span><i class='fa fa-home' aria-hidden='true'></i></span>
                        </div>
                        <div class='col-xs-9 navigator-text'>
                            <span>My Courses</span>
                        </div>
                    </div>
                </a>
            </div>
        ";
    }else if($_SESSION['level'] === 'Admin'){
        echo "
            <div class='side-menu-navigation-mobile'>
                <a href='approve'>
                    <div class='row navigator'>
                        <div class='col-xs-3 icon'>
                            <span><i class='fa fa-home' aria-hidden='true'></i></span>
                        </div>
                        <div class='col-xs-9 navigator-text'>
                            <span>Approve Courses</span>
                        </div>
                    </div>
                </a>
                <a href='courses_admin'>
                    <div class='row navigator'>
                        <div class='col-xs-3 icon'>
                            <span><i class='fa fa-home' aria-hidden='true'></i></span>
                        </div>
                        <div class='col-xs-9 navigator-text'>
                            <span>Courses</span>
                        </div>
                    </div>
                </a>
                <a href='dashboard_Admin'>
                    <div class='row navigator'>
                        <div class='col-xs-3 icon'>
                            <span><i class='fa fa-home' aria-hidden='true'></i></span>
                        </div>
                        <div class='col-xs-9 navigator-text'>
                            <span>Dashboard</span>
                        </div>
                    </div>
                </a>
                <a href='student'>
                    <div class='row navigator'>
                        <div class='col-xs-3 icon'>
                            <span><i class='fa fa-home' aria-hidden='true'></i></span>
                        </div>
                        <div class='col-xs-9 navigator-text'>
                            <span>Student</span>
                        </div>
                    </div>
                </a>
                <a href='teacher'>
                    <div class='row navigator'>
                        <div class='col-xs-3 icon'>
                            <span><i class='fa fa-home' aria-hidden='true'></i></span>
                        </div>
                        <div class='col-xs-9 navigator-text'>
                            <span>Teacher</span>
                        </div>
                    </div>
                </a>
                <a href='upgrade'>
                    <div class='row navigator'>
                        <div class='col-xs-3 icon'>
                            <span><i class='fa fa-home' aria-hidden='true'></i></span>
                        </div>
                        <div class='col-xs-9 navigator-text'>
                            <span>Upgrade</span>
                        </div>
                    </div>
                </a>
            </div>
        ";
    }else if($_SESSION['level'] === 'Teacher'){
        echo "
            <div class='side-menu-navigation-mobile'>
                
                <a href='all_course'>
                    <div class='row navigator'>
                        <div class='col-xs-3 icon'>
                            <span><i class='fa fa-home' aria-hidden='true'></i></span>
                        </div>
                        <div class='col-xs-9 navigator-text'>
                            <span>Course</span>
                        </div>
                    </div>
                </a>
                <a href='dashboard_mini'>
                    <div class='row navigator'>
                        <div class='col-xs-3 icon'>
                            <span><i class='fa fa-home' aria-hidden='true'></i></span>
                        </div>
                        <div class='col-xs-9 navigator-text'>
                            <span>Dashboard</span>
                        </div>
                    </div>
                </a>
                <a href='courses_teacher'>
                    <div class='row navigator'>
                        <div class='col-xs-3 icon'>
                            <span><i class='fa fa-home' aria-hidden='true'></i></span>
                        </div>
                        <div class='col-xs-9 navigator-text'>
                            <span>MY Courses</span>
                        </div>
                    </div>
                </a>
            </div>
        ";
    }
?>