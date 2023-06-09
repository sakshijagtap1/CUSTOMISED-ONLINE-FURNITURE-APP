.class public Lcom/google/android/gms/internal/zzaoo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# static fields
.field private static final bhA:[Ljava/lang/String;

.field private static final bhB:[Ljava/lang/String;


# instance fields
.field private bdS:Z

.field private bdT:Z

.field private bhC:Ljava/lang/String;

.field private bhD:Ljava/lang/String;

.field private bhd:Z

.field private bhl:[I

.field private bhm:I

.field private final out:Ljava/io/Writer;

.field private separator:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v1, 0x0

    const/16 v0, 0x80

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/zzaoo;->bhA:[Ljava/lang/String;

    move v0, v1

    :goto_8
    const/16 v2, 0x1f

    if-gt v0, v2, :cond_22

    sget-object v2, Lcom/google/android/gms/internal/zzaoo;->bhA:[Ljava/lang/String;

    const-string v3, "\\u%04x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_22
    sget-object v0, Lcom/google/android/gms/internal/zzaoo;->bhA:[Ljava/lang/String;

    const/16 v1, 0x22

    const-string v2, "\\\""

    aput-object v2, v0, v1

    sget-object v0, Lcom/google/android/gms/internal/zzaoo;->bhA:[Ljava/lang/String;

    const/16 v1, 0x5c

    const-string v2, "\\\\"

    aput-object v2, v0, v1

    sget-object v0, Lcom/google/android/gms/internal/zzaoo;->bhA:[Ljava/lang/String;

    const/16 v1, 0x9

    const-string v2, "\\t"

    aput-object v2, v0, v1

    sget-object v0, Lcom/google/android/gms/internal/zzaoo;->bhA:[Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "\\b"

    aput-object v2, v0, v1

    sget-object v0, Lcom/google/android/gms/internal/zzaoo;->bhA:[Ljava/lang/String;

    const/16 v1, 0xa

    const-string v2, "\\n"

    aput-object v2, v0, v1

    sget-object v0, Lcom/google/android/gms/internal/zzaoo;->bhA:[Ljava/lang/String;

    const/16 v1, 0xd

    const-string v2, "\\r"

    aput-object v2, v0, v1

    sget-object v0, Lcom/google/android/gms/internal/zzaoo;->bhA:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string v2, "\\f"

    aput-object v2, v0, v1

    sget-object v0, Lcom/google/android/gms/internal/zzaoo;->bhA:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/zzaoo;->bhB:[Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzaoo;->bhB:[Ljava/lang/String;

    const/16 v1, 0x3c

    const-string v2, "\\u003c"

    aput-object v2, v0, v1

    sget-object v0, Lcom/google/android/gms/internal/zzaoo;->bhB:[Ljava/lang/String;

    const/16 v1, 0x3e

    const-string v2, "\\u003e"

    aput-object v2, v0, v1

    sget-object v0, Lcom/google/android/gms/internal/zzaoo;->bhB:[Ljava/lang/String;

    const/16 v1, 0x26

    const-string v2, "\\u0026"

    aput-object v2, v0, v1

    sget-object v0, Lcom/google/android/gms/internal/zzaoo;->bhB:[Ljava/lang/String;

    const/16 v1, 0x3d

    const-string v2, "\\u003d"

    aput-object v2, v0, v1

    sget-object v0, Lcom/google/android/gms/internal/zzaoo;->bhB:[Ljava/lang/String;

    const/16 v1, 0x27

    const-string v2, "\\u0027"

    aput-object v2, v0, v1

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaoo;->bhl:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzaoo;->bhm:I

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaoo;->zzafl(I)V

    const-string v0, ":"

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaoo;->separator:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaoo;->bdS:Z

    if-nez p1, :cond_21

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    iput-object p1, p0, Lcom/google/android/gms/internal/zzaoo;->out:Ljava/io/Writer;

    return-void
.end method

.method private A()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoo;->bhD:Ljava/lang/String;

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaoo;->C()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoo;->bhD:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaoo;->zztv(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaoo;->bhD:Ljava/lang/String;

    :cond_f
    return-void
.end method

.method private B()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoo;->bhC:Ljava/lang/String;

    if-nez v0, :cond_5

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoo;->out:Ljava/io/Writer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/zzaoo;->bhm:I

    :goto_f
    if-ge v0, v1, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaoo;->out:Ljava/io/Writer;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaoo;->bhC:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f
.end method

.method private C()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaoo;->z()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoo;->out:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    :cond_e
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaoo;->B()V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaoo;->zzafn(I)V

    return-void

    :cond_16
    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nesting problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private z()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/zzaoo;->bhm:I

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoo;->bhl:[I

    iget v1, p0, Lcom/google/android/gms/internal/zzaoo;->bhm:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method private zzafl(I)V
    .registers 6

    const/4 v3, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/zzaoo;->bhm:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaoo;->bhl:[I

    array-length v1, v1

    if-ne v0, v1, :cond_17

    iget v0, p0, Lcom/google/android/gms/internal/zzaoo;->bhm:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaoo;->bhl:[I

    iget v2, p0, Lcom/google/android/gms/internal/zzaoo;->bhm:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaoo;->bhl:[I

    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoo;->bhl:[I

    iget v1, p0, Lcom/google/android/gms/internal/zzaoo;->bhm:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzaoo;->bhm:I

    aput p1, v0, v1

    return-void
.end method

.method private zzafn(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoo;->bhl:[I

    iget v1, p0, Lcom/google/android/gms/internal/zzaoo;->bhm:I

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    return-void
.end method

.method private zzc(IILjava/lang/String;)Lcom/google/android/gms/internal/zzaoo;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaoo;->z()I

    move-result v0

    if-eq v0, p2, :cond_10

    if-eq v0, p1, :cond_10

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nesting problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaoo;->bhD:Ljava/lang/String;

    if-eqz v1, :cond_32

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Dangling name: "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoo;->bhD:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2c

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_28
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_28

    :cond_32
    iget v1, p0, Lcom/google/android/gms/internal/zzaoo;->bhm:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzaoo;->bhm:I

    if-ne v0, p2, :cond_3d

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaoo;->B()V

    :cond_3d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoo;->out:Ljava/io/Writer;

    invoke-virtual {v0, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method private zzde(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaoo;->z()I

    move-result v0

    packed-switch v0, :pswitch_data_4e

    :pswitch_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nesting problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_f
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaoo;->bhd:Z

    if-nez v0, :cond_1b

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JSON must have only one top-level value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    :pswitch_1b
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaoo;->bhd:Z

    if-nez v0, :cond_29

    if-nez p1, :cond_29

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JSON must start with an array or an object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaoo;->zzafn(I)V

    :goto_2d
    return-void

    :pswitch_2e
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaoo;->zzafn(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaoo;->B()V

    goto :goto_2d

    :pswitch_36
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoo;->out:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaoo;->B()V

    goto :goto_2d

    :pswitch_41
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoo;->out:Ljava/io/Writer;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaoo;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaoo;->zzafn(I)V

    goto :goto_2d

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_36
        :pswitch_7
        :pswitch_41
        :pswitch_7
        :pswitch_1b
        :pswitch_f
    .end packed-switch
.end method

.method private zzq(ILjava/lang/String;)Lcom/google/android/gms/internal/zzaoo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaoo;->zzde(Z)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaoo;->zzafl(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoo;->out:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method private zztv(Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaoo;->bdT:Z

    if-eqz v0, :cond_25

    sget-object v0, Lcom/google/android/gms/internal/zzaoo;->bhB:[Ljava/lang/String;

    :goto_7
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaoo;->out:Ljava/io/Writer;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    move v3, v1

    :goto_13
    if-ge v3, v4, :cond_46

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x80

    if-ge v2, v5, :cond_28

    aget-object v2, v0, v2

    if-nez v2, :cond_2e

    :cond_21
    :goto_21
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_13

    :cond_25
    sget-object v0, Lcom/google/android/gms/internal/zzaoo;->bhA:[Ljava/lang/String;

    goto :goto_7

    :cond_28
    const/16 v5, 0x2028

    if-ne v2, v5, :cond_3f

    const-string v2, "\\u2028"

    :cond_2e
    :goto_2e
    if-ge v1, v3, :cond_37

    iget-object v5, p0, Lcom/google/android/gms/internal/zzaoo;->out:Ljava/io/Writer;

    sub-int v6, v3, v1

    invoke-virtual {v5, p1, v1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    :cond_37
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaoo;->out:Ljava/io/Writer;

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v1, v3, 0x1

    goto :goto_21

    :cond_3f
    const/16 v5, 0x2029

    if-ne v2, v5, :cond_21

    const-string v2, "\\u2029"

    goto :goto_2e

    :cond_46
    if-ge v1, v4, :cond_4f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoo;->out:Ljava/io/Writer;

    sub-int v2, v4, v1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    :cond_4f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoo;->out:Ljava/io/Writer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoo;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    iget v0, p0, Lcom/google/android/gms/internal/zzaoo;->bhm:I

    if-gt v0, v1, :cond_15

    if-ne v0, v1, :cond_1d

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaoo;->bhl:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1d

    :cond_15
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzaoo;->bhm:I

    return-void
.end method

.method public flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzaoo;->bhm:I

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoo;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public h()Lcom/google/android/gms/internal/zzaoo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaoo;->A()V

    const/4 v0, 0x1

    const-string v1, "["

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzaoo;->zzq(ILjava/lang/String;)Lcom/google/android/gms/internal/zzaoo;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/google/android/gms/internal/zzaoo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    const-string v2, "]"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzaoo;->zzc(IILjava/lang/String;)Lcom/google/android/gms/internal/zzaoo;

    move-result-object v0

    return-object v0
.end method

.method public isLenient()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaoo;->bhd:Z

    return v0
.end method

.method public j()Lcom/google/android/gms/internal/zzaoo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaoo;->A()V

    const/4 v0, 0x3

    const-string v1, "{"

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzaoo;->zzq(ILjava/lang/String;)Lcom/google/android/gms/internal/zzaoo;

    move-result-object v0

    return-object v0
.end method

.method public k()Lcom/google/android/gms/internal/zzaoo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x5

    const-string v2, "}"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzaoo;->zzc(IILjava/lang/String;)Lcom/google/android/gms/internal/zzaoo;

    move-result-object v0

    return-object v0
.end method

.method public l()Lcom/google/android/gms/internal/zzaoo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoo;->bhD:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaoo;->bdS:Z

    if-eqz v0, :cond_17

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaoo;->A()V

    :cond_b
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaoo;->zzde(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoo;->out:Ljava/io/Writer;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_16
    return-object p0

    :cond_17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaoo;->bhD:Ljava/lang/String;

    goto :goto_16
.end method

.method public final setIndent(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaoo;->bhC:Ljava/lang/String;

    const-string v0, ":"

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaoo;->separator:Ljava/lang/String;

    :goto_d
    return-void

    :cond_e
    iput-object p1, p0, Lcom/google/android/gms/internal/zzaoo;->bhC:Ljava/lang/String;

    const-string v0, ": "

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaoo;->separator:Ljava/lang/String;

    goto :goto_d
.end method

.method public final setLenient(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzaoo;->bhd:Z

    return-void
.end method

.method public final x()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaoo;->bdT:Z

    return v0
.end method

.method public final y()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaoo;->bdS:Z

    return v0
.end method

.method public zza(Ljava/lang/Number;)Lcom/google/android/gms/internal/zzaoo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaoo;->l()Lcom/google/android/gms/internal/zzaoo;

    move-result-object p0

    :goto_6
    return-object p0

    :cond_7
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaoo;->A()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzaoo;->bhd:Z

    if-nez v1, :cond_51

    const-string v1, "-Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "NaN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x27

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Numeric values must be finite, but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_51
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzaoo;->zzde(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaoo;->out:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_6
.end method

.method public zzcr(J)Lcom/google/android/gms/internal/zzaoo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaoo;->A()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaoo;->zzde(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoo;->out:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public zzda(Z)Lcom/google/android/gms/internal/zzaoo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaoo;->A()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaoo;->zzde(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaoo;->out:Ljava/io/Writer;

    if-eqz p1, :cond_11

    const-string v0, "true"

    :goto_d
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0

    :cond_11
    const-string v0, "false"

    goto :goto_d
.end method

.method public final zzdc(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzaoo;->bdT:Z

    return-void
.end method

.method public final zzdd(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzaoo;->bdS:Z

    return-void
.end method

.method public zztr(Ljava/lang/String;)Lcom/google/android/gms/internal/zzaoo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoo;->bhD:Ljava/lang/String;

    if-eqz v0, :cond_14

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_14
    iget v0, p0, Lcom/google/android/gms/internal/zzaoo;->bhm:I

    if-nez v0, :cond_20

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    iput-object p1, p0, Lcom/google/android/gms/internal/zzaoo;->bhD:Ljava/lang/String;

    return-object p0
.end method

.method public zzts(Ljava/lang/String;)Lcom/google/android/gms/internal/zzaoo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaoo;->l()Lcom/google/android/gms/internal/zzaoo;

    move-result-object p0

    :goto_6
    return-object p0

    :cond_7
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaoo;->A()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaoo;->zzde(Z)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaoo;->zztv(Ljava/lang/String;)V

    goto :goto_6
.end method
