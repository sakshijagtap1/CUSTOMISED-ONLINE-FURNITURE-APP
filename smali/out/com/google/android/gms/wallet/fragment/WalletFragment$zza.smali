.class Lcom/google/android/gms/wallet/fragment/WalletFragment$zza;
.super Lcom/google/android/gms/internal/zzaec$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/fragment/WalletFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zza"
.end annotation


# instance fields
.field private aHY:Lcom/google/android/gms/wallet/fragment/WalletFragment$OnStateChangedListener;

.field private final aHZ:Lcom/google/android/gms/wallet/fragment/WalletFragment;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wallet/fragment/WalletFragment;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaec$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$zza;->aHZ:Lcom/google/android/gms/wallet/fragment/WalletFragment;

    return-void
.end method


# virtual methods
.method public zza(IILandroid/os/Bundle;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$zza;->aHY:Lcom/google/android/gms/wallet/fragment/WalletFragment$OnStateChangedListener;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$zza;->aHY:Lcom/google/android/gms/wallet/fragment/WalletFragment$OnStateChangedListener;

    iget-object v1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$zza;->aHZ:Lcom/google/android/gms/wallet/fragment/WalletFragment;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/google/android/gms/wallet/fragment/WalletFragment$OnStateChangedListener;->onStateChanged(Lcom/google/android/gms/wallet/fragment/WalletFragment;IILandroid/os/Bundle;)V

    :cond_b
    return-void
.end method

.method public zza(Lcom/google/android/gms/wallet/fragment/WalletFragment$OnStateChangedListener;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$zza;->aHY:Lcom/google/android/gms/wallet/fragment/WalletFragment$OnStateChangedListener;

    return-void
.end method
