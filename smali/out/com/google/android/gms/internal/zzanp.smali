.class public final Lcom/google/android/gms/internal/zzanp;
.super Ljava/lang/Object;


# instance fields
.field private final bed:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/android/gms/internal/zzamr",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/android/gms/internal/zzamr",
            "<*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzanp;->bed:Ljava/util/Map;

    return-void
.end method

.method private zzc(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/android/gms/internal/zzanu;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<-TT;>;)",
            "Lcom/google/android/gms/internal/zzanu",
            "<TT;>;"
        }
    .end annotation

    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_46

    const-class v0, Ljava/util/SortedSet;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_16

    new-instance v0, Lcom/google/android/gms/internal/zzanp$7;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzanp$7;-><init>(Lcom/google/android/gms/internal/zzanp;)V

    :goto_15
    return-object v0

    :cond_16
    const-class v0, Ljava/util/EnumSet;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_24

    new-instance v0, Lcom/google/android/gms/internal/zzanp$8;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzanp$8;-><init>(Lcom/google/android/gms/internal/zzanp;Ljava/lang/reflect/Type;)V

    goto :goto_15

    :cond_24
    const-class v0, Ljava/util/Set;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_32

    new-instance v0, Lcom/google/android/gms/internal/zzanp$9;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzanp$9;-><init>(Lcom/google/android/gms/internal/zzanp;)V

    goto :goto_15

    :cond_32
    const-class v0, Ljava/util/Queue;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_40

    new-instance v0, Lcom/google/android/gms/internal/zzanp$10;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzanp$10;-><init>(Lcom/google/android/gms/internal/zzanp;)V

    goto :goto_15

    :cond_40
    new-instance v0, Lcom/google/android/gms/internal/zzanp$11;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzanp$11;-><init>(Lcom/google/android/gms/internal/zzanp;)V

    goto :goto_15

    :cond_46
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_85

    const-class v0, Ljava/util/SortedMap;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5c

    new-instance v0, Lcom/google/android/gms/internal/zzanp$12;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzanp$12;-><init>(Lcom/google/android/gms/internal/zzanp;)V

    goto :goto_15

    :cond_5c
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_7f

    const-class v0, Ljava/lang/String;

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaol;->zzl(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/zzaol;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaol;->m()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_7f

    new-instance v0, Lcom/google/android/gms/internal/zzanp$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzanp$2;-><init>(Lcom/google/android/gms/internal/zzanp;)V

    goto :goto_15

    :cond_7f
    new-instance v0, Lcom/google/android/gms/internal/zzanp$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzanp$3;-><init>(Lcom/google/android/gms/internal/zzanp;)V

    goto :goto_15

    :cond_85
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private zzd(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/android/gms/internal/zzanu;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<-TT;>;)",
            "Lcom/google/android/gms/internal/zzanu",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzanp$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/internal/zzanp$4;-><init>(Lcom/google/android/gms/internal/zzanp;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method private zzl(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzanu;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<-TT;>;)",
            "Lcom/google/android/gms/internal/zzanu",
            "<TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/zzanp$6;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzanp$6;-><init>(Lcom/google/android/gms/internal/zzanp;Ljava/lang/reflect/Constructor;)V
    :try_end_16
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_16} :catch_17

    :goto_16
    return-object v0

    :catch_17
    move-exception v0

    const/4 v0, 0x0

    goto :goto_16
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanp;->bed:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzaol;)Lcom/google/android/gms/internal/zzanu;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzaol",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/zzanu",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaol;->n()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaol;->m()Ljava/lang/Class;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanp;->bed:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzamr;

    if-eqz v0, :cond_19

    new-instance v1, Lcom/google/android/gms/internal/zzanp$1;

    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/gms/internal/zzanp$1;-><init>(Lcom/google/android/gms/internal/zzanp;Lcom/google/android/gms/internal/zzamr;Ljava/lang/reflect/Type;)V

    move-object v0, v1

    :cond_18
    :goto_18
    return-object v0

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/zzanp;->bed:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzamr;

    if-eqz v0, :cond_2a

    new-instance v1, Lcom/google/android/gms/internal/zzanp$5;

    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/gms/internal/zzanp$5;-><init>(Lcom/google/android/gms/internal/zzanp;Lcom/google/android/gms/internal/zzamr;Ljava/lang/reflect/Type;)V

    move-object v0, v1

    goto :goto_18

    :cond_2a
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzanp;->zzl(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzanu;

    move-result-object v0

    if-nez v0, :cond_18

    invoke-direct {p0, v2, v1}, Lcom/google/android/gms/internal/zzanp;->zzc(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/android/gms/internal/zzanu;

    move-result-object v0

    if-nez v0, :cond_18

    invoke-direct {p0, v2, v1}, Lcom/google/android/gms/internal/zzanp;->zzd(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/android/gms/internal/zzanu;

    move-result-object v0

    goto :goto_18
.end method
