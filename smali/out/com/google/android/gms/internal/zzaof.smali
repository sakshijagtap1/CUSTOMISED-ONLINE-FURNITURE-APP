.class public final Lcom/google/android/gms/internal/zzaof;
.super Lcom/google/android/gms/internal/zzanh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzanh",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final bfu:Lcom/google/android/gms/internal/zzani;


# instance fields
.field private final beq:Lcom/google/android/gms/internal/zzamp;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/zzaof$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaof$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaof;->bfu:Lcom/google/android/gms/internal/zzani;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzamp;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzanh;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaof;->beq:Lcom/google/android/gms/internal/zzamp;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzamp;Lcom/google/android/gms/internal/zzaof$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaof;-><init>(Lcom/google/android/gms/internal/zzamp;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzaoo;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaoo;->l()Lcom/google/android/gms/internal/zzaoo;

    :goto_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaof;->beq:Lcom/google/android/gms/internal/zzamp;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzamp;->zzk(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzanh;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/zzaof;

    if-eqz v1, :cond_1b

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaoo;->j()Lcom/google/android/gms/internal/zzaoo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaoo;->k()Lcom/google/android/gms/internal/zzaoo;

    goto :goto_5

    :cond_1b
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzanh;->zza(Lcom/google/android/gms/internal/zzaoo;Ljava/lang/Object;)V

    goto :goto_5
.end method

.method public zzb(Lcom/google/android/gms/internal/zzaom;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaom;->b()Lcom/google/android/gms/internal/zzaon;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzaof$2;->bfK:[I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaon;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_6a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaom;->beginArray()V

    :goto_1d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaom;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaof;->zzb(Lcom/google/android/gms/internal/zzaom;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_2b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaom;->endArray()V

    :goto_2e
    return-object v0

    :pswitch_2f
    new-instance v0, Lcom/google/android/gms/internal/zzant;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzant;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaom;->beginObject()V

    :goto_37
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaom;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaom;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaof;->zzb(Lcom/google/android/gms/internal/zzaom;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_37

    :cond_49
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaom;->endObject()V

    goto :goto_2e

    :pswitch_4d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaom;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    :pswitch_52
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaom;->nextDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_2e

    :pswitch_5b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaom;->nextBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2e

    :pswitch_64
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaom;->nextNull()V

    const/4 v0, 0x0

    goto :goto_2e

    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_15
        :pswitch_2f
        :pswitch_4d
        :pswitch_52
        :pswitch_5b
        :pswitch_64
    .end packed-switch
.end method
