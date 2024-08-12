.class public Laah/challenges/Services/Challenge06Location;
.super Landroid/app/Service;
.source "Challenge06Location.java"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static final MIN_DISTANCE_CHANGE_FOR_UPDATES:J = 0x1L

.field private static final MIN_TIME_BW_UPDATES:J = 0x3cL


# instance fields
.field final TAG:Ljava/lang/String;

.field canGetLocation:Z

.field checkGPS:Z

.field checkNetwork:Z

.field latitude:D

.field loc:Landroid/location/Location;

.field protected locationManager:Landroid/location/LocationManager;

.field longitude:D

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, "Challenge06Location"

    .line 16
    iput-object v0, p0, Laah/challenges/Services/Challenge06Location;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Laah/challenges/Services/Challenge06Location;->checkGPS:Z

    .line 21
    iput-boolean v0, p0, Laah/challenges/Services/Challenge06Location;->checkNetwork:Z

    .line 22
    iput-boolean v0, p0, Laah/challenges/Services/Challenge06Location;->canGetLocation:Z

    .line 32
    iput-object p1, p0, Laah/challenges/Services/Challenge06Location;->mContext:Landroid/content/Context;

    .line 33
    invoke-direct {p0}, Laah/challenges/Services/Challenge06Location;->getLocation()Landroid/location/Location;

    return-void
.end method

.method private getLocation()Landroid/location/Location;
    .locals 9

    const-string v0, "gps"

    const-string v1, "Challenge06Location"

    .line 39
    :try_start_0
    iget-object v2, p0, Laah/challenges/Services/Challenge06Location;->mContext:Landroid/content/Context;

    const-string v3, "location"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    iput-object v2, p0, Laah/challenges/Services/Challenge06Location;->locationManager:Landroid/location/LocationManager;

    .line 40
    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Laah/challenges/Services/Challenge06Location;->checkGPS:Z

    if-nez v2, :cond_0

    .line 41
    iget-boolean v2, p0, Laah/challenges/Services/Challenge06Location;->checkNetwork:Z

    if-nez v2, :cond_0

    .line 42
    iget-object v0, p0, Laah/challenges/Services/Challenge06Location;->mContext:Landroid/content/Context;

    const-string v1, "No Service Provider is available"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const-string v2, "canGetLocation = true"

    .line 45
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    .line 46
    iput-boolean v2, p0, Laah/challenges/Services/Challenge06Location;->canGetLocation:Z

    .line 49
    iget-boolean v2, p0, Laah/challenges/Services/Challenge06Location;->checkGPS:Z

    if-eqz v2, :cond_1

    const-string v2, "checkGPS = true"

    .line 50
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v3, p0, Laah/challenges/Services/Challenge06Location;->locationManager:Landroid/location/LocationManager;

    const-string v4, "gps"

    const-wide/16 v5, 0x3c

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v8, p0

    invoke-virtual/range {v3 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 56
    iget-object v2, p0, Laah/challenges/Services/Challenge06Location;->locationManager:Landroid/location/LocationManager;

    if-eqz v2, :cond_1

    const-string v2, "locationManager = true"

    .line 57
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v2, p0, Laah/challenges/Services/Challenge06Location;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Laah/challenges/Services/Challenge06Location;->loc:Landroid/location/Location;

    if-eqz v0, :cond_1

    const-string v0, "getLastKnownLocation = true"

    .line 60
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Laah/challenges/Services/Challenge06Location;->loc:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Laah/challenges/Services/Challenge06Location;->latitude:D

    .line 62
    iget-object v0, p0, Laah/challenges/Services/Challenge06Location;->loc:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Laah/challenges/Services/Challenge06Location;->longitude:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    :cond_1
    :goto_0
    iget-object p0, p0, Laah/challenges/Services/Challenge06Location;->loc:Landroid/location/Location;

    return-object p0
.end method


# virtual methods
.method public canGetLocation()Z
    .locals 0

    .line 83
    iget-boolean p0, p0, Laah/challenges/Services/Challenge06Location;->canGetLocation:Z

    return p0
.end method

.method public getLatitude()D
    .locals 2

    .line 79
    iget-object v0, p0, Laah/challenges/Services/Challenge06Location;->loc:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Laah/challenges/Services/Challenge06Location;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 75
    iget-object p0, p0, Laah/challenges/Services/Challenge06Location;->loc:Landroid/location/Location;

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0

    .line 99
    invoke-virtual {p0}, Laah/challenges/Services/Challenge06Location;->getLatitude()D

    .line 100
    invoke-virtual {p0}, Laah/challenges/Services/Challenge06Location;->getLongitude()D

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public stopListener()V
    .locals 1

    .line 87
    iget-object v0, p0, Laah/challenges/Services/Challenge06Location;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    return-void
.end method
