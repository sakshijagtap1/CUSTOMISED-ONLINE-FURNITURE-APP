.class public final Lcom/google/android/gms/internal/zzaoe;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzani;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzaoe$zza;
    }
.end annotation


# instance fields
.field private final bdR:Lcom/google/android/gms/internal/zzanp;

.field private final bfG:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzanp;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaoe;->bdR:Lcom/google/android/gms/internal/zzanp;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzaoe;->bfG:Z

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzamp;Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/zzanh;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzamp;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/android/gms/internal/zzanh",
            "<*>;"
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_8

    const-class v0, Ljava/lang/Boolean;

    if-ne p2, v0, :cond_b

    :cond_8
    sget-object v0, Lcom/google/android/gms/internal/zzaok;->bgc:Lcom/google/android/gms/internal/zzanh;

    :goto_a
    return-object v0

    :cond_b
    invoke-static {p2}, Lcom/google/android/gms/internal/zzaol;->zzl(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/zzaol;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzamp;->zza(Lcom/google/android/gms/internal/zzaol;)Lcom/google/android/gms/internal/zzanh;

    move-result-object v0

    goto :goto_a
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaoe;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaoe;->bfG:Z

    return v0
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzamp;Lcom/google/android/gms/internal/zzaol;)Lcom/google/android/gms/internal/zzanh;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzamp;",
            "Lcom/google/android/gms/internal/zzaol",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/zzanh",
            "<TT;>;"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzaol;->n()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzaol;->m()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_14

    const/4 v0, 0x0

    :goto_13
    return-object v0

    :cond_14
    invoke-static {v0}, Lcom/google/android/gms/internal/zzano;->zzf(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzano;->zzb(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v0, v1, v3

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzaoe;->zza(Lcom/google/android/gms/internal/zzamp;Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/zzanh;

    move-result-object v4

    aget-object v0, v1, v5

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaol;->zzl(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/zzaol;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzamp;->zza(Lcom/google/android/gms/internal/zzaol;)Lcom/google/android/gms/internal/zzanh;

    move-result-object v6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoe;->bdR:Lcom/google/android/gms/internal/zzanp;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzanp;->zzb(Lcom/google/android/gms/internal/zzaol;)Lcom/google/android/gms/internal/zzanu;

    move-result-object v7

    new-instance v0, Lcom/google/android/gms/internal/zzaoe$zza;

    aget-object v3, v1, v3

    aget-object v5, v1, v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzaoe$zza;-><init>(Lcom/google/android/gms/internal/zzaoe;Lcom/google/android/gms/internal/zzamp;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/zzanh;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/zzanh;Lcom/google/android/gms/internal/zzanu;)V

    goto :goto_13
.end method
