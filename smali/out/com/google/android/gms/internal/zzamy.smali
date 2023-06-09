.class public final Lcom/google/android/gms/internal/zzamy;
.super Lcom/google/android/gms/internal/zzamv;


# instance fields
.field private final bej:Lcom/google/android/gms/internal/zzant;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzant",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzamv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamv;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzant;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzant;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzamy;->bej:Lcom/google/android/gms/internal/zzant;

    return-void
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzamv;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamy;->bej:Lcom/google/android/gms/internal/zzant;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzant;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p1, p0, :cond_12

    instance-of v0, p1, Lcom/google/android/gms/internal/zzamy;

    if-eqz v0, :cond_14

    check-cast p1, Lcom/google/android/gms/internal/zzamy;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzamy;->bej:Lcom/google/android/gms/internal/zzant;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamy;->bej:Lcom/google/android/gms/internal/zzant;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzant;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public has(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamy;->bej:Lcom/google/android/gms/internal/zzant;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzant;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamy;->bej:Lcom/google/android/gms/internal/zzant;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzant;->hashCode()I

    move-result v0

    return v0
.end method

.method public zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzamv;)V
    .registers 4

    if-nez p2, :cond_4

    sget-object p2, Lcom/google/android/gms/internal/zzamx;->bei:Lcom/google/android/gms/internal/zzamx;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamy;->bej:Lcom/google/android/gms/internal/zzant;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzant;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public zzto(Ljava/lang/String;)Lcom/google/android/gms/internal/zzamv;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamy;->bej:Lcom/google/android/gms/internal/zzant;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzant;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzamv;

    return-object v0
.end method
