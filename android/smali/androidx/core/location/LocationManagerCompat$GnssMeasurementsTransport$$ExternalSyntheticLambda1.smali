.class public final synthetic Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;

.field public final synthetic f$1:Ljava/util/concurrent/Executor;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;Ljava/util/concurrent/Executor;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport$$ExternalSyntheticLambda1;->f$0:Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;

    iput-object p2, p0, Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/Executor;

    iput p3, p0, Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport$$ExternalSyntheticLambda1;->f$0:Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;

    iget-object v1, p0, Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/Executor;

    iget v2, p0, Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport$$ExternalSyntheticLambda1;->f$2:I

    invoke-virtual {v0, v1, v2}, Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;->lambda$onStatusChanged$1$androidx-core-location-LocationManagerCompat$GnssMeasurementsTransport(Ljava/util/concurrent/Executor;I)V

    return-void
.end method
