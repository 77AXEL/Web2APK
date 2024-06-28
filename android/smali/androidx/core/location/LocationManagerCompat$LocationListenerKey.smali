.class Landroidx/core/location/LocationManagerCompat$LocationListenerKey;
.super Ljava/lang/Object;
.source "LocationManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/LocationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocationListenerKey"
.end annotation


# instance fields
.field final mListener:Landroidx/core/location/LocationListenerCompat;

.field final mProvider:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroidx/core/location/LocationListenerCompat;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "listener"    # Landroidx/core/location/LocationListenerCompat;

    .line 702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 703
    const-string v0, "invalid null provider"

    invoke-static {p1, v0}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerKey;->mProvider:Ljava/lang/String;

    .line 704
    const-string v0, "invalid null listener"

    invoke-static {p2, v0}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/location/LocationListenerCompat;

    iput-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerKey;->mListener:Landroidx/core/location/LocationListenerCompat;

    .line 705
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 709
    instance-of v0, p1, Landroidx/core/location/LocationManagerCompat$LocationListenerKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 710
    return v1

    .line 713
    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/core/location/LocationManagerCompat$LocationListenerKey;

    .line 714
    .local v0, "that":Landroidx/core/location/LocationManagerCompat$LocationListenerKey;
    iget-object v2, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerKey;->mProvider:Ljava/lang/String;

    iget-object v3, v0, Landroidx/core/location/LocationManagerCompat$LocationListenerKey;->mProvider:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerKey;->mListener:Landroidx/core/location/LocationListenerCompat;

    iget-object v3, v0, Landroidx/core/location/LocationManagerCompat$LocationListenerKey;->mListener:Landroidx/core/location/LocationListenerCompat;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 719
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerKey;->mProvider:Ljava/lang/String;

    iget-object v1, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerKey;->mListener:Landroidx/core/location/LocationListenerCompat;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
