.class Lcom/android/server/location/GpsStatusListenerHelper$5;
.super Ljava/lang/Object;
.source "GpsStatusListenerHelper.java"

# interfaces
.implements Lcom/android/server/location/GpsStatusListenerHelper$Operation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GpsStatusListenerHelper;->onGnssSvStatusChanged(I[I[F[F[F[Z[Z[Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsStatusListenerHelper;

.field final synthetic val$almanacPresences:[Z

.field final synthetic val$azimuths:[F

.field final synthetic val$elevations:[F

.field final synthetic val$ephemerisPresences:[Z

.field final synthetic val$prns:[I

.field final synthetic val$snrs:[F

.field final synthetic val$svCount:I

.field final synthetic val$usedInFix:[Z


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsStatusListenerHelper;I[I[F[F[F[Z[Z[Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/GpsStatusListenerHelper;
    .param p2, "val$svCount"    # I
    .param p3, "val$prns"    # [I
    .param p4, "val$snrs"    # [F
    .param p5, "val$elevations"    # [F
    .param p6, "val$azimuths"    # [F
    .param p7, "val$ephemerisPresences"    # [Z
    .param p8, "val$almanacPresences"    # [Z
    .param p9, "val$usedInFix"    # [Z

    .prologue
    iput-object p1, p0, Lcom/android/server/location/GpsStatusListenerHelper$5;->this$0:Lcom/android/server/location/GpsStatusListenerHelper;

    iput p2, p0, Lcom/android/server/location/GpsStatusListenerHelper$5;->val$svCount:I

    iput-object p3, p0, Lcom/android/server/location/GpsStatusListenerHelper$5;->val$prns:[I

    iput-object p4, p0, Lcom/android/server/location/GpsStatusListenerHelper$5;->val$snrs:[F

    iput-object p5, p0, Lcom/android/server/location/GpsStatusListenerHelper$5;->val$elevations:[F

    iput-object p6, p0, Lcom/android/server/location/GpsStatusListenerHelper$5;->val$azimuths:[F

    iput-object p7, p0, Lcom/android/server/location/GpsStatusListenerHelper$5;->val$ephemerisPresences:[Z

    iput-object p8, p0, Lcom/android/server/location/GpsStatusListenerHelper$5;->val$almanacPresences:[Z

    iput-object p9, p0, Lcom/android/server/location/GpsStatusListenerHelper$5;->val$usedInFix:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Landroid/location/IGpsStatusListener;)V
    .locals 9
    .param p1, "listener"    # Landroid/location/IGpsStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget v1, p0, Lcom/android/server/location/GpsStatusListenerHelper$5;->val$svCount:I

    iget-object v2, p0, Lcom/android/server/location/GpsStatusListenerHelper$5;->val$prns:[I

    iget-object v3, p0, Lcom/android/server/location/GpsStatusListenerHelper$5;->val$snrs:[F

    iget-object v4, p0, Lcom/android/server/location/GpsStatusListenerHelper$5;->val$elevations:[F

    iget-object v5, p0, Lcom/android/server/location/GpsStatusListenerHelper$5;->val$azimuths:[F

    iget-object v6, p0, Lcom/android/server/location/GpsStatusListenerHelper$5;->val$ephemerisPresences:[Z

    iget-object v7, p0, Lcom/android/server/location/GpsStatusListenerHelper$5;->val$almanacPresences:[Z

    iget-object v8, p0, Lcom/android/server/location/GpsStatusListenerHelper$5;->val$usedInFix:[Z

    move-object v0, p1

    invoke-interface/range {v0 .. v8}, Landroid/location/IGpsStatusListener;->onGnssSvStatusChanged(I[I[F[F[F[Z[Z[Z)V

    return-void
.end method

.method public bridge synthetic execute(Landroid/os/IInterface;)V
    .locals 0
    .param p1, "listener"    # Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    check-cast p1, Landroid/location/IGpsStatusListener;

    .end local p1    # "listener":Landroid/os/IInterface;
    invoke-virtual {p0, p1}, Lcom/android/server/location/GpsStatusListenerHelper$5;->execute(Landroid/location/IGpsStatusListener;)V

    return-void
.end method