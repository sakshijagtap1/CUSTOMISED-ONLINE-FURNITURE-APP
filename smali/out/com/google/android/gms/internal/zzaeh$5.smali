.class Lcom/google/android/gms/internal/zzaeh$5;
.super Lcom/google/android/gms/wallet/Wallet$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzaeh;->notifyTransactionStatus(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aIg:Lcom/google/android/gms/internal/zzaeh;

.field final synthetic aIl:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaeh;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaeh$5;->aIg:Lcom/google/android/gms/internal/zzaeh;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaeh$5;->aIl:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/wallet/Wallet$zzb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzaei;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaeh$5;->zza(Lcom/google/android/gms/internal/zzaei;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzaei;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaeh$5;->aIl:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzaei;->zza(Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->sq:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaeh$5;->zzc(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
