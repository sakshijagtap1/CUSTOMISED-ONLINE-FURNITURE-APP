.class public final Lcom/google/android/gms/internal/zzaod;
.super Lcom/google/android/gms/internal/zzaoo;


# static fields
.field private static final bfC:Ljava/io/Writer;

.field private static final bfD:Lcom/google/android/gms/internal/zzanb;


# instance fields
.field private final bfB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzamv;",
            ">;"
        }
    .end annotation
.end field

.field private bfE:Ljava/lang/String;

.field private bfF:Lcom/google/android/gms/internal/zzamv;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/zzaod$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaod$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaod;->bfC:Ljava/io/Writer;

    new-instance v0, Lcom/google/android/gms/internal/zzanb;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzanb;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzaod;->bfD:Lcom/google/android/gms/internal/zzanb;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzaod;->bfC:Ljava/io/Writer;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaoo;-><init>(Ljava/io/Writer;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaod;->bfB:Ljava/util/List;

    sget-object v0, Lcom/google/android/gms/internal/zzamx;->bei:Lcom/google/android/gms/internal/zzamx;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaod;->bfF:Lcom/google/android/gms/internal/zzamv;

    return-void
.end method

.method private g()Lcom/google/android/gms/internal/zzamv;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaod;->bfB:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaod;->bfB:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzamv;

    return-object v0
.end method

.method private zzd(Lcom/google/android/gms/internal/zzamv;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaod;->bfE:Ljava/lang/String;

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzamv;->zzczj()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaod;->y()Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_10
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaod;->g()Lcom/google/android/gms/internal/zzamv;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzamy;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaod;->bfE:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzamy;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzamv;)V

    :cond_1b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaod;->bfE:Ljava/lang/String;

    :goto_1e
    return-void

    :cond_1f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaod;->bfB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaod;->bfF:Lcom/google/android/gms/internal/zzamv;

    goto :goto_1e

    :cond_2a
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaod;->g()Lcom/google/android/gms/internal/zzamv;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/zzams;

    if-eqz v1, :cond_38

    check-cast v0, Lcom/google/android/gms/internal/zzams;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzams;->zzc(Lcom/google/android/gms/internal/zzamv;)V

    goto :goto_1e

    :cond_38
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaod;->bfB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaod;->bfB:Ljava/util/List;

    sget-object v1, Lcom/google/android/gms/internal/zzaod;->bfD:Lcom/google/android/gms/internal/zzanb;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public f()Lcom/google/android/gms/internal/zzamv;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaod;->bfB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_31

    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaod;->bfB:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x22

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Expected one JSON element but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaod;->bfF:Lcom/google/android/gms/internal/zzamv;

    return-object v0
.end method

.method public flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public h()Lcom/google/android/gms/internal/zzaoo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzams;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzams;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaod;->zzd(Lcom/google/android/gms/internal/zzamv;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaod;->bfB:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public i()Lcom/google/android/gms/internal/zzaoo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaod;->bfB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaod;->bfE:Ljava/lang/String;

    if-eqz v0, :cond_12

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_12
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaod;->g()Lcom/google/android/gms/internal/zzamv;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/internal/zzams;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaod;->bfB:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaod;->bfB:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public j()Lcom/google/android/gms/internal/zzaoo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzamy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzamy;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaod;->zzd(Lcom/google/android/gms/internal/zzamv;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaod;->bfB:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public k()Lcom/google/android/gms/internal/zzaoo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaod;->bfB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaod;->bfE:Ljava/lang/String;

    if-eqz v0, :cond_12

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_12
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaod;->g()Lcom/google/android/gms/internal/zzamv;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/internal/zzamy;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaod;->bfB:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaod;->bfB:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public l()Lcom/google/android/gms/internal/zzaoo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzamx;->bei:Lcom/google/android/gms/internal/zzamx;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaod;->zzd(Lcom/google/android/gms/internal/zzamv;)V

    return-object p0
.end method

.method public zza(Ljava/lang/Number;)Lcom/google/android/gms/internal/zzaoo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaod;->l()Lcom/google/android/gms/internal/zzaoo;

    move-result-object p0

    :goto_6
    return-object p0

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaod;->isLenient()Z

    move-result v0

    if-nez v0, :cond_44

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_44

    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x21

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "JSON forbids NaN and infinities: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    new-instance v0, Lcom/google/android/gms/internal/zzanb;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzanb;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaod;->zzd(Lcom/google/android/gms/internal/zzamv;)V

    goto :goto_6
.end method

.method public zzcr(J)Lcom/google/android/gms/internal/zzaoo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzanb;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzanb;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaod;->zzd(Lcom/google/android/gms/internal/zzamv;)V

    return-object p0
.end method

.method public zzda(Z)Lcom/google/android/gms/internal/zzaoo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzanb;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzanb;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaod;->zzd(Lcom/google/android/gms/internal/zzamv;)V

    return-object p0
.end method

.method public zztr(Ljava/lang/String;)Lcom/google/android/gms/internal/zzaoo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaod;->bfB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaod;->bfE:Ljava/lang/String;

    if-eqz v0, :cond_12

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_12
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaod;->g()Lcom/google/android/gms/internal/zzamv;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/internal/zzamy;

    if-eqz v0, :cond_1d

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaod;->bfE:Ljava/lang/String;

    return-object p0

    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public zzts(Ljava/lang/String;)Lcom/google/android/gms/internal/zzaoo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaod;->l()Lcom/google/android/gms/internal/zzaoo;

    move-result-object p0

    :goto_6
    return-object p0

    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/zzanb;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzanb;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaod;->zzd(Lcom/google/android/gms/internal/zzamv;)V

    goto :goto_6
.end method
