.class Lcom/google/android/gms/internal/zzaog$1;
.super Lcom/google/android/gms/internal/zzaog$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzaog;->zza(Lcom/google/android/gms/internal/zzamp;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/google/android/gms/internal/zzaol;ZZ)Lcom/google/android/gms/internal/zzaog$zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final bfL:Lcom/google/android/gms/internal/zzanh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzanh",
            "<*>;"
        }
    .end annotation
.end field

.field final synthetic bfM:Lcom/google/android/gms/internal/zzamp;

.field final synthetic bfN:Ljava/lang/reflect/Field;

.field final synthetic bfO:Lcom/google/android/gms/internal/zzaol;

.field final synthetic bfP:Z

.field final synthetic bfQ:Lcom/google/android/gms/internal/zzaog;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaog;Ljava/lang/String;ZZLcom/google/android/gms/internal/zzamp;Ljava/lang/reflect/Field;Lcom/google/android/gms/internal/zzaol;Z)V
    .registers 13

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaog$1;->bfQ:Lcom/google/android/gms/internal/zzaog;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzaog$1;->bfM:Lcom/google/android/gms/internal/zzamp;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzaog$1;->bfN:Ljava/lang/reflect/Field;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzaog$1;->bfO:Lcom/google/android/gms/internal/zzaol;

    iput-boolean p8, p0, Lcom/google/android/gms/internal/zzaog$1;->bfP:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/gms/internal/zzaog$zzb;-><init>(Ljava/lang/String;ZZ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaog$1;->bfQ:Lcom/google/android/gms/internal/zzaog;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaog$1;->bfM:Lcom/google/android/gms/internal/zzamp;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaog$1;->bfN:Ljava/lang/reflect/Field;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaog$1;->bfO:Lcom/google/android/gms/internal/zzaol;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzaog;->zza(Lcom/google/android/gms/internal/zzaog;Lcom/google/android/gms/internal/zzamp;Ljava/lang/reflect/Field;Lcom/google/android/gms/internal/zzaol;)Lcom/google/android/gms/internal/zzanh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaog$1;->bfL:Lcom/google/android/gms/internal/zzanh;

    return-void
.end method


# virtual methods
.method zza(Lcom/google/android/gms/internal/zzaom;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaog$1;->bfL:Lcom/google/android/gms/internal/zzanh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzanh;->zzb(Lcom/google/android/gms/internal/zzaom;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzaog$1;->bfP:Z

    if-nez v1, :cond_11

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaog$1;->bfN:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method zza(Lcom/google/android/gms/internal/zzaoo;Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaog$1;->bfN:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzaoj;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaog$1;->bfM:Lcom/google/android/gms/internal/zzamp;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaog$1;->bfL:Lcom/google/android/gms/internal/zzanh;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaog$1;->bfO:Lcom/google/android/gms/internal/zzaol;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzaol;->n()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzaoj;-><init>(Lcom/google/android/gms/internal/zzamp;Lcom/google/android/gms/internal/zzanh;Ljava/lang/reflect/Type;)V

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/zzanh;->zza(Lcom/google/android/gms/internal/zzaoo;Ljava/lang/Object;)V

    return-void
.end method

.method public zzco(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzaog$1;->bfS:Z

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaog$1;->bfN:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method
