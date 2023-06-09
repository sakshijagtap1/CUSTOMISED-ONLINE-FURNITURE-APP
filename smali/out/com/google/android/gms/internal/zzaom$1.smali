.class final Lcom/google/android/gms/internal/zzaom$1;
.super Lcom/google/android/gms/internal/zzanr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzanr;-><init>()V

    return-void
.end method


# virtual methods
.method public zzi(Lcom/google/android/gms/internal/zzaom;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/zzaoc;

    if-eqz v0, :cond_a

    check-cast p1, Lcom/google/android/gms/internal/zzaoc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaoc;->e()V

    :goto_9
    return-void

    :cond_a
    invoke-static {p1}, Lcom/google/android/gms/internal/zzaom;->zzag(Lcom/google/android/gms/internal/zzaom;)I

    move-result v0

    if-nez v0, :cond_14

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaom;->zzah(Lcom/google/android/gms/internal/zzaom;)I

    move-result v0

    :cond_14
    const/16 v1, 0xd

    if-ne v0, v1, :cond_1e

    const/16 v0, 0x9

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzaom;->zza(Lcom/google/android/gms/internal/zzaom;I)I

    goto :goto_9

    :cond_1e
    const/16 v1, 0xc

    if-ne v0, v1, :cond_28

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzaom;->zza(Lcom/google/android/gms/internal/zzaom;I)I

    goto :goto_9

    :cond_28
    const/16 v1, 0xe

    if-ne v0, v1, :cond_32

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzaom;->zza(Lcom/google/android/gms/internal/zzaom;I)I

    goto :goto_9

    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaom;->b()Lcom/google/android/gms/internal/zzaon;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaom;->zzai(Lcom/google/android/gms/internal/zzaom;)I

    move-result v2

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaom;->zzaj(Lcom/google/android/gms/internal/zzaom;)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaom;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x46

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Expected a name but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
