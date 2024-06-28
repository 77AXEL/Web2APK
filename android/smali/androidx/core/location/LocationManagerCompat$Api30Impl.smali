.class Landroidx/core/location/LocationManagerCompat$Api30Impl;
.super Ljava/lang/Object;
.source "LocationManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/LocationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api30Impl"
.end annotation


# static fields
.field private static sLocationRequestClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sRequestLocationUpdatesExecutorMethod:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1226
    return-void
.end method

.method static getCurrentLocation(Landroid/location/LocationManager;Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V
    .locals 1
    .param p0, "locationManager"    # Landroid/location/LocationManager;
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/LocationManager;",
            "Ljava/lang/String;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/core/util/Consumer<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .line 1233
    .local p4, "consumer":Landroidx/core/util/Consumer;, "Landroidx/core/util/Consumer<Landroid/location/Location;>;"
    nop

    .line 1236
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/core/location/LocationManagerCompat$Api30Impl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p4}, Landroidx/core/location/LocationManagerCompat$Api30Impl$$ExternalSyntheticLambda0;-><init>(Landroidx/core/util/Consumer;)V

    .line 1233
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/location/LocationManager;->getCurrentLocation(Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 1237
    return-void
.end method

.method public static registerGnssStatusCallback(Landroid/location/LocationManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat$Callback;)Z
    .locals 3
    .param p0, "locationManager"    # Landroid/location/LocationManager;
    .param p1, "baseHandler"    # Landroid/os/Handler;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroidx/core/location/GnssStatusCompat$Callback;

    .line 1280
    sget-object v0, Landroidx/core/location/LocationManagerCompat$GnssListenersHolder;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    monitor-enter v0

    .line 1281
    :try_start_0
    sget-object v1, Landroidx/core/location/LocationManagerCompat$GnssListenersHolder;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    .line 1282
    invoke-virtual {v1, p3}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/location/LocationManagerCompat$GnssStatusTransport;

    .line 1284
    .local v1, "transport":Landroidx/core/location/LocationManagerCompat$GnssStatusTransport;
    if-nez v1, :cond_0

    .line 1285
    new-instance v2, Landroidx/core/location/LocationManagerCompat$GnssStatusTransport;

    invoke-direct {v2, p3}, Landroidx/core/location/LocationManagerCompat$GnssStatusTransport;-><init>(Landroidx/core/location/GnssStatusCompat$Callback;)V

    move-object v1, v2

    .line 1287
    :cond_0
    invoke-virtual {p0, p2, v1}, Landroid/location/LocationManager;->registerGnssStatusCallback(Ljava/util/concurrent/Executor;Landroid/location/GnssStatus$Callback;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1288
    sget-object v2, Landroidx/core/location/LocationManagerCompat$GnssListenersHolder;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v2, p3, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1289
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 1291
    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 1293
    .end local v1    # "transport":Landroidx/core/location/LocationManagerCompat$GnssStatusTransport;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static tryRequestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;Landroidx/core/location/LocationRequestCompat;Ljava/util/concurrent/Executor;Landroidx/core/location/LocationListenerCompat;)Z
    .locals 7
    .param p0, "locationManager"    # Landroid/location/LocationManager;
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "locationRequest"    # Landroidx/core/location/LocationRequestCompat;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Landroidx/core/location/LocationListenerCompat;

    .line 1244
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x0

    if-lt v0, v1, :cond_3

    .line 1246
    :try_start_0
    sget-object v0, Landroidx/core/location/LocationManagerCompat$Api30Impl;->sLocationRequestClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 1247
    const-string v0, "android.location.LocationRequest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroidx/core/location/LocationManagerCompat$Api30Impl;->sLocationRequestClass:Ljava/lang/Class;

    .line 1249
    :cond_0
    sget-object v0, Landroidx/core/location/LocationManagerCompat$Api30Impl;->sRequestLocationUpdatesExecutorMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1250
    const-class v0, Landroid/location/LocationManager;

    const-string v3, "requestLocationUpdates"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Landroidx/core/location/LocationManagerCompat$Api30Impl;->sLocationRequestClass:Ljava/lang/Class;

    aput-object v5, v4, v2

    const-class v5, Ljava/util/concurrent/Executor;

    aput-object v5, v4, v1

    const-class v5, Landroid/location/LocationListener;

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 1251
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/location/LocationManagerCompat$Api30Impl;->sRequestLocationUpdatesExecutorMethod:Ljava/lang/reflect/Method;

    .line 1255
    sget-object v0, Landroidx/core/location/LocationManagerCompat$Api30Impl;->sRequestLocationUpdatesExecutorMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1258
    :cond_1
    invoke-virtual {p2, p1}, Landroidx/core/location/LocationRequestCompat;->toLocationRequest(Ljava/lang/String;)Landroid/location/LocationRequest;

    move-result-object v0

    .line 1259
    .local v0, "request":Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 1260
    sget-object v3, Landroidx/core/location/LocationManagerCompat$Api30Impl;->sRequestLocationUpdatesExecutorMethod:Ljava/lang/reflect/Method;

    filled-new-array {v0, p3, p4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1263
    return v1

    .line 1271
    .end local v0    # "request":Ljava/lang/Object;
    :cond_2
    goto :goto_0

    .line 1265
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v0

    .line 1273
    :cond_3
    :goto_0
    return v2
.end method
