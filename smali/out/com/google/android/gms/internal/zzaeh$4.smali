.class Lcom/google/android/gms/internal/zzaeh$4;
.super Lcom/google/android/gms/wallet/Wallet$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzaeh;->changeMaskedWallet(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aIg:Lcom/google/android/gms/internal/zzaeh;

.field final synthetic aIj:Ljava/lang/String;

.field final synthetic aIk:Ljava/lang/String;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaeh;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaeh$4;->aIg:Lcom/google/android/gms/internal/zzaeh;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaeh$4;->aIj:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzaeh$4;->aIk:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/internal/zzaeh$4;->val$requestCode:I

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaeh$4;->zza(Lcom/google/android/gms/internal/zzaei;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzaei;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaeh$4;->aIj:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaeh$4;->aIk:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/internal/zzaeh$4;->val$requestCode:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzaei;->zzf(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->sq:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaeh$4;->zzc(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
