Write-Host "Cloning started"

# create a folder with todays date
$todaysName = "$((Get-Date).ToString('yyyy-MM-dd'))"
$todaysName
$location = "C:\DEVEL\CFaria\GITHUB-BACKUP\" + "$todaysName"
New-Item -ItemType Directory -Path $location

# change working directory to today's folder
cd $location

# download all github.com/chrisfaria important git projects
git clone https://github.com/chrisfaria/signalr-web-notification-client.git
git clone https://github.com/chrisfaria/TikTube.git
git clone https://github.com/chrisfaria/angular-proc-launcher-ngrx.git
git clone https://github.com/chrisfaria/angular-jwt-auth-template.git
git clone https://github.com/chrisfaria/time-and-attendance.git
git clone https://github.com/chrisfaria/WorkoutApp.UserProgress.git
git clone https://github.com/chrisfaria/WorkoutApp.ProgramListing.git
git clone https://github.com/chrisfaria/WorkourApp.git
git clone https://github.com/chrisfaria/Software-Architecture-Guide.git
git clone https://github.com/chrisfaria/SignalRNotificationHub.git
git clone https://github.com/chrisfaria/xamarin-rest-template.git
git clone https://github.com/chrisfaria/git-backup.git

cd ..

# compress
$compress = @{
LiteralPath= "$location"
CompressionLevel = "Optimal"
DestinationPath = "$location" + ".zip"
}
Compress-Archive @compress

Write-Host "Cloning finished"

