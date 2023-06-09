.class public final Lcom/paypal/android/sdk/ef;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/bx;


# instance fields
.field private a:Lcom/paypal/android/sdk/ee;


# direct methods
.method public constructor <init>(Lcom/paypal/android/sdk/ee;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/paypal/android/sdk/ef;->a:Lcom/paypal/android/sdk/ee;

    return-void
.end method


# virtual methods
.method public final a(Lcom/paypal/android/sdk/cw;)V
    .registers 4

    instance-of v0, p1, Lcom/paypal/android/sdk/fr;

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cw;->q()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/paypal/android/sdk/ef;->a:Lcom/paypal/android/sdk/ee;

    check-cast p1, Lcom/paypal/android/sdk/fr;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/ee;->a(Lcom/paypal/android/sdk/fr;)V

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/paypal/android/sdk/ef;->a:Lcom/paypal/android/sdk/ee;

    check-cast p1, Lcom/paypal/android/sdk/fr;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/ee;->b(Lcom/paypal/android/sdk/fr;)V

    goto :goto_11

    :cond_1a
    instance-of v0, p1, Lcom/paypal/android/sdk/fm;

    if-eqz v0, :cond_34

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cw;->q()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/paypal/android/sdk/ef;->a:Lcom/paypal/android/sdk/ee;

    check-cast p1, Lcom/paypal/android/sdk/fm;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/ee;->a(Lcom/paypal/android/sdk/fm;)V

    goto :goto_11

    :cond_2c
    iget-object v0, p0, Lcom/paypal/android/sdk/ef;->a:Lcom/paypal/android/sdk/ee;

    check-cast p1, Lcom/paypal/android/sdk/fm;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/ee;->b(Lcom/paypal/android/sdk/fm;)V

    goto :goto_11

    :cond_34
    instance-of v0, p1, Lcom/paypal/android/sdk/fh;

    if-eqz v0, :cond_4e

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cw;->q()Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/paypal/android/sdk/ef;->a:Lcom/paypal/android/sdk/ee;

    check-cast p1, Lcom/paypal/android/sdk/fh;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/ee;->a(Lcom/paypal/android/sdk/fh;)V

    goto :goto_11

    :cond_46
    iget-object v0, p0, Lcom/paypal/android/sdk/ef;->a:Lcom/paypal/android/sdk/ee;

    check-cast p1, Lcom/paypal/android/sdk/fh;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/ee;->b(Lcom/paypal/android/sdk/fh;)V

    goto :goto_11

    :cond_4e
    instance-of v0, p1, Lcom/paypal/android/sdk/fs;

    if-eqz v0, :cond_68

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cw;->q()Z

    move-result v0

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/paypal/android/sdk/ef;->a:Lcom/paypal/android/sdk/ee;

    check-cast p1, Lcom/paypal/android/sdk/fs;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/ee;->a(Lcom/paypal/android/sdk/fs;)V

    goto :goto_11

    :cond_60
    iget-object v0, p0, Lcom/paypal/android/sdk/ef;->a:Lcom/paypal/android/sdk/ee;

    check-cast p1, Lcom/paypal/android/sdk/fs;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/ee;->b(Lcom/paypal/android/sdk/fs;)V

    goto :goto_11

    :cond_68
    instance-of v0, p1, Lcom/paypal/android/sdk/fi;

    if-eqz v0, :cond_80

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cw;->q()Z

    move-result v0

    if-eqz v0, :cond_78

    iget-object v0, p0, Lcom/paypal/android/sdk/ef;->a:Lcom/paypal/android/sdk/ee;

    invoke-interface {v0}, Lcom/paypal/android/sdk/ee;->a()V

    goto :goto_11

    :cond_78
    iget-object v0, p0, Lcom/paypal/android/sdk/ef;->a:Lcom/paypal/android/sdk/ee;

    check-cast p1, Lcom/paypal/android/sdk/fi;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/ee;->a(Lcom/paypal/android/sdk/fi;)V

    goto :goto_11

    :cond_80
    instance-of v0, p1, Lcom/paypal/android/sdk/ff;

    if-eqz v0, :cond_9b

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cw;->q()Z

    move-result v0

    if-eqz v0, :cond_92

    iget-object v0, p0, Lcom/paypal/android/sdk/ef;->a:Lcom/paypal/android/sdk/ee;

    check-cast p1, Lcom/paypal/android/sdk/ff;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/ee;->a(Lcom/paypal/android/sdk/ff;)V

    goto :goto_11

    :cond_92
    iget-object v0, p0, Lcom/paypal/android/sdk/ef;->a:Lcom/paypal/android/sdk/ee;

    check-cast p1, Lcom/paypal/android/sdk/ff;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/ee;->b(Lcom/paypal/android/sdk/ff;)V

    goto/16 :goto_11

    :cond_9b
    instance-of v0, p1, Lcom/paypal/android/sdk/fg;

    if-eqz v0, :cond_b7

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cw;->q()Z

    move-result v0

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lcom/paypal/android/sdk/ef;->a:Lcom/paypal/android/sdk/ee;

    check-cast p1, Lcom/paypal/android/sdk/fg;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/ee;->a(Lcom/paypal/android/sdk/fg;)V

    goto/16 :goto_11

    :cond_ae
    iget-object v0, p0, Lcom/paypal/android/sdk/ef;->a:Lcom/paypal/android/sdk/ee;

    check-cast p1, Lcom/paypal/android/sdk/fg;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/ee;->b(Lcom/paypal/android/sdk/fg;)V

    goto/16 :goto_11

    :cond_b7
    instance-of v0, p1, Lcom/paypal/android/sdk/fd;

    if-eqz v0, :cond_d3

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cw;->q()Z

    move-result v0

    if-eqz v0, :cond_ca

    iget-object v0, p0, Lcom/paypal/android/sdk/ef;->a:Lcom/paypal/android/sdk/ee;

    check-cast p1, Lcom/paypal/android/sdk/fd;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/ee;->a(Lcom/paypal/android/sdk/fd;)V

    goto/16 :goto_11

    :cond_ca
    iget-object v0, p0, Lcom/paypal/android/sdk/ef;->a:Lcom/paypal/android/sdk/ee;

    check-cast p1, Lcom/paypal/android/sdk/fd;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/ee;->b(Lcom/paypal/android/sdk/fd;)V

    goto/16 :goto_11

    :cond_d3
    instance-of v0, p1, Lcom/paypal/android/sdk/fk;

    if-eqz v0, :cond_ef

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cw;->q()Z

    move-result v0

    if-eqz v0, :cond_e6

    iget-object v0, p0, Lcom/paypal/android/sdk/ef;->a:Lcom/paypal/android/sdk/ee;

    check-cast p1, Lcom/paypal/android/sdk/fk;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/ee;->a(Lcom/paypal/android/sdk/fk;)V

    goto/16 :goto_11

    :cond_e6
    iget-object v0, p0, Lcom/paypal/android/sdk/ef;->a:Lcom/paypal/android/sdk/ee;

    check-cast p1, Lcom/paypal/android/sdk/fk;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/ee;->b(Lcom/paypal/android/sdk/fk;)V

    goto/16 :goto_11

    :cond_ef
    instance-of v0, p1, Lcom/paypal/android/sdk/fl;

    if-eqz v0, :cond_10b

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cw;->q()Z

    move-result v0

    if-eqz v0, :cond_102

    iget-object v0, p0, Lcom/paypal/android/sdk/ef;->a:Lcom/paypal/android/sdk/ee;

    check-cast p1, Lcom/paypal/android/sdk/fl;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/ee;->a(Lcom/paypal/android/sdk/fl;)V

    goto/16 :goto_11

    :cond_102
    iget-object v0, p0, Lcom/paypal/android/sdk/ef;->a:Lcom/paypal/android/sdk/ee;

    check-cast p1, Lcom/paypal/android/sdk/fl;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/ee;->b(Lcom/paypal/android/sdk/fl;)V

    goto/16 :goto_11

    :cond_10b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not handled"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
