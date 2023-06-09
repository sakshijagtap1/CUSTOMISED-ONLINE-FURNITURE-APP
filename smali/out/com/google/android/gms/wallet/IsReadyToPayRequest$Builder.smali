.class public final Lcom/google/android/gms/wallet/IsReadyToPayRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/IsReadyToPayRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Builder"
.end annotation


# instance fields
.field final synthetic aGn:Lcom/google/android/gms/wallet/IsReadyToPayRequest;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wallet/IsReadyToPayRequest;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/wallet/IsReadyToPayRequest$Builder;->aGn:Lcom/google/android/gms/wallet/IsReadyToPayRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wallet/IsReadyToPayRequest;Lcom/google/android/gms/wallet/IsReadyToPayRequest$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/IsReadyToPayRequest$Builder;-><init>(Lcom/google/android/gms/wallet/IsReadyToPayRequest;)V

    return-void
.end method


# virtual methods
.method public addAllowedCardNetwork(I)Lcom/google/android/gms/wallet/IsReadyToPayRequest$Builder;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/wallet/IsReadyToPayRequest$Builder;->aGn:Lcom/google/android/gms/wallet/IsReadyToPayRequest;

    iget-object v0, v0, Lcom/google/android/gms/wallet/IsReadyToPayRequest;->aGl:Ljava/util/ArrayList;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/wallet/IsReadyToPayRequest$Builder;->aGn:Lcom/google/android/gms/wallet/IsReadyToPayRequest;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/wallet/IsReadyToPayRequest;->aGl:Ljava/util/ArrayList;

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/wallet/IsReadyToPayRequest$Builder;->aGn:Lcom/google/android/gms/wallet/IsReadyToPayRequest;

    iget-object v0, v0, Lcom/google/android/gms/wallet/IsReadyToPayRequest;->aGl:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/google/android/gms/wallet/IsReadyToPayRequest;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/IsReadyToPayRequest$Builder;->aGn:Lcom/google/android/gms/wallet/IsReadyToPayRequest;

    return-object v0
.end method
