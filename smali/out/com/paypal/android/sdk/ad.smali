.class public final Lcom/paypal/android/sdk/ad;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/h;


# static fields
.field private static final a:Ljava/util/Map;

.field private static final b:Ljava/util/Map;

.field private static final c:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->a:Lcom/paypal/android/sdk/fw;

    const-string v2, "Godk\u00e4nn och betala"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->b:Lcom/paypal/android/sdk/fw;

    const-string v2, "och annan"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->c:Lcom/paypal/android/sdk/fw;

    const-string v2, "Autentisering utf\u00f6rs"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->d:Lcom/paypal/android/sdk/fw;

    const-string v2, "Tillbaka"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->e:Lcom/paypal/android/sdk/fw;

    const-string v2, "Reservmetod"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->f:Lcom/paypal/android/sdk/fw;

    const-string v2, "Avbryt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->g:Lcom/paypal/android/sdk/fw;

    const-string v2, "American Express"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->h:Lcom/paypal/android/sdk/fw;

    const-string v2, "Carta Aura"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->i:Lcom/paypal/android/sdk/fw;

    const-string v2, "Carte Aurore"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->j:Lcom/paypal/android/sdk/fw;

    const-string v2, "Carta Prepagata PayPal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->k:Lcom/paypal/android/sdk/fw;

    const-string v2, "Carte Bancaire"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->l:Lcom/paypal/android/sdk/fw;

    const-string v2, "Cofinoga"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->m:Lcom/paypal/android/sdk/fw;

    const-string v2, "Delta"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->n:Lcom/paypal/android/sdk/fw;

    const-string v2, "Discover"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->o:Lcom/paypal/android/sdk/fw;

    const-string v2, "Electron"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->p:Lcom/paypal/android/sdk/fw;

    const-string v2, "JCB"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->q:Lcom/paypal/android/sdk/fw;

    const-string v2, "Maestro"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->r:Lcom/paypal/android/sdk/fw;

    const-string v2, "MasterCard"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->s:Lcom/paypal/android/sdk/fw;

    const-string v2, "Postepay"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->t:Lcom/paypal/android/sdk/fw;

    const-string v2, "4 \u00e9toiles"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->u:Lcom/paypal/android/sdk/fw;

    const-string v2, "Tarjeta Aurora"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->v:Lcom/paypal/android/sdk/fw;

    const-string v2, "Visa"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->w:Lcom/paypal/android/sdk/fw;

    const-string v2, "\u00c4ndra betalningsmetod"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->x:Lcom/paypal/android/sdk/fw;

    const-string v2, "L\u00f6nekonto"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->y:Lcom/paypal/android/sdk/fw;

    const-string v2, "Enheten kontrolleras \u2026"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->z:Lcom/paypal/android/sdk/fw;

    const-string v2, "Ta bort kortuppgifter"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->A:Lcom/paypal/android/sdk/fw;

    const-string v2, "Bekr\u00e4fta"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->B:Lcom/paypal/android/sdk/fw;

    const-string v2, "Vill du ta bort kortuppgifterna?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->C:Lcom/paypal/android/sdk/fw;

    const-string v2, "Debitera kort"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->D:Lcom/paypal/android/sdk/fw;

    const-string v2, "Vill du logga ut fr\u00e5n PayPal?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->E:Lcom/paypal/android/sdk/fw;

    const-string v2, "Betala"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->F:Lcom/paypal/android/sdk/fw;

    const-string v2, "Godk\u00e4nn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->G:Lcom/paypal/android/sdk/fw;

    const-string v2, "Datum d\u00e5 kontot skapades"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->H:Lcom/paypal/android/sdk/fw;

    const-string v2, "Kontostatus"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->I:Lcom/paypal/android/sdk/fw;

    const-string v2, "Kontotyp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->J:Lcom/paypal/android/sdk/fw;

    const-string v2, "Adress"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->K:Lcom/paypal/android/sdk/fw;

    const-string v2, "\u00c5ldersintervall"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->L:Lcom/paypal/android/sdk/fw;

    const-string v2, "F\u00f6delsedatum"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->M:Lcom/paypal/android/sdk/fw;

    const-string v2, "E-postadress"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->N:Lcom/paypal/android/sdk/fw;

    const-string v2, "Fullst\u00e4ndigt namn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->O:Lcom/paypal/android/sdk/fw;

    const-string v2, "K\u00f6n"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->P:Lcom/paypal/android/sdk/fw;

    const-string v2, "Spr\u00e5k"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->Q:Lcom/paypal/android/sdk/fw;

    const-string v2, "Spr\u00e5kinst\u00e4llning"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->R:Lcom/paypal/android/sdk/fw;

    const-string v2, "Telefon"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->S:Lcom/paypal/android/sdk/fw;

    const-string v2, "Tidszon"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->T:Lcom/paypal/android/sdk/fw;

    const-string v2, "Dela det h\u00e4r: %s."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->U:Lcom/paypal/android/sdk/fw;

    const-string v2, "Betala smidigt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->V:Lcom/paypal/android/sdk/fw;

    const-string v2, "%s ber dig att:"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->W:Lcom/paypal/android/sdk/fw;

    const-string v2, "Dela <a href=\'%1$s\'>betalningsmetoderna</a> som \u00e4r kopplade till ditt PayPal-konto."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->X:Lcom/paypal/android/sdk/fw;

    const-string v2, "Aktivera visning av dina betalningsalternativ s\u00e5 att du kan v\u00e4lja mellan dem."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->Y:Lcom/paypal/android/sdk/fw;

    const-string v2, "<a href=\'%1$s\'>Godk\u00e4nna avgifter</a> f\u00f6r framtida k\u00f6p hos %2$s som betalas med PayPal. Du ger PayPal i uppdrag att betala alla belopp som beg\u00e4rs av %3$s."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->Z:Lcom/paypal/android/sdk/fw;

    const-string v2, "Till\u00e5t att de l\u00e4gger till och hanterar sina lojalitetskort i din PayPal-e-pl\u00e5nbok."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aa:Lcom/paypal/android/sdk/fw;

    const-string v2, "godk\u00e4nna <a href=\'%2$s\'>sekretesspolicyn</a> och <a href=\'%3$s\'>anv\u00e4ndaravtalet</a> f\u00f6r %1$s."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->ab:Lcom/paypal/android/sdk/fw;

    const-string v2, "Till\u00e5t dem att <a href=\'%1$s\'>be om betalning</a> f\u00f6r din r\u00e4kning tills du drar tillbaka ditt medgivande."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->ac:Lcom/paypal/android/sdk/fw;

    const-string v2, "Till\u00e5t dem att <a href=\'%1$s\'>\u00f6verf\u00f6ra pengar</a> f\u00f6r din r\u00e4kning tills du drar tillbaka ditt medgivande."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->ad:Lcom/paypal/android/sdk/fw;

    const-string v2, "Medgivande"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->ae:Lcom/paypal/android/sdk/fw;

    const-string v2, "E-post"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->af:Lcom/paypal/android/sdk/fw;

    const-string v2, "Exempeldata"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->ag:Lcom/paypal/android/sdk/fw;

    const-string v2, "Sandbox"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->ah:Lcom/paypal/android/sdk/fw;

    const-string v2, "G\u00e5r ut"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->ai:Lcom/paypal/android/sdk/fw;

    const-string v2, "<h1><strong>Betalningsmetoder</strong></h1><p>PayPal delar bara information om vilken av dina betalningsmetoder som ska anv\u00e4ndas.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aj:Lcom/paypal/android/sdk/fw;

    const-string v2, "Har du gl\u00f6mt l\u00f6senordet?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->ak:Lcom/paypal/android/sdk/fw;

    const-string v2, "Fr\u00e5n"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->al:Lcom/paypal/android/sdk/fw;

    const-string v2, "P\u00e5 vilket s\u00e4tt vill du g\u00f6ra framtida betalningar till %1$s?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->am:Lcom/paypal/android/sdk/fw;

    const-string v2, "<h1><strong>Avtal f\u00f6r framtida betalningar</strong></h1><p>Dina framtida PayPal-betalningar betalas med det betalningsalternativ du angett f\u00f6r den h\u00e4r handlaren.</p><p>Om du vill upph\u00e4va avtalet loggar du in p\u00e5 PayPal-kontot och g\u00e5r till <strong>Min profil</strong> &gt; <strong>Mina inst\u00e4llningar</strong> &gt; <strong>Logga in med PayPal</strong> och tar bort handlaren fr\u00e5n listan.</p><p>Avsnittet \u00c5terkommande betalningar i <a href=\'%s\'>PayPals anv\u00e4ndaravtal</a> g\u00e4ller.</p><p>Appen simulerar eventuellt en liten testtransaktion f\u00f6r att se till att du kan g\u00f6ra betalningar fr\u00e5n ditt PayPal-konto, men inga pengar \u00f6verf\u00f6rs.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->an:Lcom/paypal/android/sdk/fw;

    const-string v2, "Internt fel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->ao:Lcom/paypal/android/sdk/fw;

    const-string v2, "<p>Genom att klicka p\u00e5 knappen godtar jag villkoren i <a href=\'%1$s\'>PayPals anv\u00e4ndaravtal</a> och intygar att jag f\u00f6ljer japanska lagar och regleringar, inklusive sanktionerna mot betalningar till Nordkorea och Iran enligt <a href=\'%2$s\'>Foreign Exchange and Foreign Trade Act</a> f\u00f6r att slutf\u00f6ra transaktionen.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->ap:Lcom/paypal/android/sdk/fw;

    const-string v2, "Logga in"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aq:Lcom/paypal/android/sdk/fw;

    const-string v2, "Logga in med PayPal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->ar:Lcom/paypal/android/sdk/fw;

    const-string v2, "Logga ut"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->as:Lcom/paypal/android/sdk/fw;

    const-string v2, "Logga ut"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->at:Lcom/paypal/android/sdk/fw;

    const-string v2, "OK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->au:Lcom/paypal/android/sdk/fw;

    const-string v2, "L\u00f6senord"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->av:Lcom/paypal/android/sdk/fw;

    const-string v2, "Betala efter leverans"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aw:Lcom/paypal/android/sdk/fw;

    const-string v2, "Betala med"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->ax:Lcom/paypal/android/sdk/fw;

    const-string v2, "Betala med kort"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->ay:Lcom/paypal/android/sdk/fw;

    const-string v2, "PayPal-saldo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->az:Lcom/paypal/android/sdk/fw;

    const-string v2, "PayPal Credit"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aA:Lcom/paypal/android/sdk/fw;

    const-string v2, "Telefon"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aB:Lcom/paypal/android/sdk/fw;

    const-string v2, "Pinkod"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aC:Lcom/paypal/android/sdk/fw;

    const-string v2, "Favoritbetalningsmetod"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aD:Lcom/paypal/android/sdk/fw;

    const-string v2, "PayPal skyddar dina <a href=\'%s\'>personliga uppgifter</a> och dina betalningsuppgifter."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aE:Lcom/paypal/android/sdk/fw;

    const-string v2, "Behandling"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aF:Lcom/paypal/android/sdk/fw;

    const-string v2, "Kom ih\u00e5g kort"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aG:Lcom/paypal/android/sdk/fw;

    const-string v2, "Be om betalning"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aH:Lcom/paypal/android/sdk/fw;

    const-string v2, "<h1><strong>%s</strong></h1><p>Alla relevanta transaktionsuppgifter delas med handlaren.</p><p>Om du vill dra tillbaka ditt medgivande loggar du in p\u00e5 paypal.com och g\u00e5r till avsnittet <strong>Logga in med PayPal</strong> under inst\u00e4llningarna f\u00f6r <strong>Min profil</strong> och tar bort handlaren.</p><p>PayPal ansvarar inte f\u00f6r \u00e5tg\u00e4rder eller fel fr\u00e5n partnerns sida.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aI:Lcom/paypal/android/sdk/fw;

    const-string v2, "Sparkonto"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aJ:Lcom/paypal/android/sdk/fw;

    const-string v2, "\u00d6verf\u00f6ra pengar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aK:Lcom/paypal/android/sdk/fw;

    const-string v2, "Det gick inte att kommunicera med PayPal-servrarna. F\u00f6rs\u00f6k igen."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aL:Lcom/paypal/android/sdk/fw;

    const-string v2, "Logga in p\u00e5 PayPal igen."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aM:Lcom/paypal/android/sdk/fw;

    const-string v2, "Sessionen har upph\u00f6rt att g\u00e4lla"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aN:Lcom/paypal/android/sdk/fw;

    const-string v2, "Leveransadress"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aO:Lcom/paypal/android/sdk/fw;

    const-string v2, "Har du inte anv\u00e4nt PayPal f\u00f6rut? Skapa konto"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aP:Lcom/paypal/android/sdk/fw;

    const-string v2, "Forts\u00e4tt att vara inloggad"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aQ:Lcom/paypal/android/sdk/fw;

    const-string v2, "Systemfel (%s). F\u00f6rs\u00f6k igen senare."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aR:Lcom/paypal/android/sdk/fw;

    const-string v2, "F\u00f6rs\u00f6k igen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aS:Lcom/paypal/android/sdk/fw;

    const-string v2, "Det gick inte att logga in eftersom tv\u00e5faktorautentisering har aktiverats f\u00f6r ditt konto."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aT:Lcom/paypal/android/sdk/fw;

    const-string v2, "S\u00e4kerhetskod"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aU:Lcom/paypal/android/sdk/fw;

    const-string v2, "Skicka ett sms till din mobiltelefon. Den sexsiffriga koden du f\u00e5r \u00e4r giltig i 5 minuter."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aV:Lcom/paypal/android/sdk/fw;

    const-string v2, "Skicka sms"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aW:Lcom/paypal/android/sdk/fw;

    const-string v2, "Ange den sexsiffriga s\u00e4kerhetskoden"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aX:Lcom/paypal/android/sdk/fw;

    const-string v2, "Ditt mobilnummer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aY:Lcom/paypal/android/sdk/fw;

    const-string v2, "Skicka sms"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aZ:Lcom/paypal/android/sdk/fw;

    const-string v2, "Skicka sms igen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->ba:Lcom/paypal/android/sdk/fw;

    const-string v2, "Det gick inte att logga in eftersom tv\u00e5faktorautentisering har aktiverats f\u00f6r ditt konto. G\u00e5 till PayPals webbplats f\u00f6r att aktivera s\u00e4kerhetsnyckeln."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bb:Lcom/paypal/android/sdk/fw;

    const-string v2, "Betalningar fr\u00e5n den h\u00e4r enheten \u00e4r inte till\u00e5tna."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bc:Lcom/paypal/android/sdk/fw;

    const-string v2, "Obeh\u00f6rig enhet"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bd:Lcom/paypal/android/sdk/fw;

    const-string v2, "Betalningar till den h\u00e4r handlaren medges inte (ogiltigt klient-id)."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->be:Lcom/paypal/android/sdk/fw;

    const-string v2, "Ogiltig handlare"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bf:Lcom/paypal/android/sdk/fw;

    const-string v2, "Det gick inte att behandla din betalning. F\u00f6rs\u00f6k igen."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bg:Lcom/paypal/android/sdk/fw;

    const-string v2, "Ok\u00e4nd betalningsmetod"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bh:Lcom/paypal/android/sdk/fw;

    const-string v2, "Tyv\u00e4rr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bi:Lcom/paypal/android/sdk/fw;

    const-string v2, "Din order"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bj:Lcom/paypal/android/sdk/fw;

    const-string v2, "Den h\u00e4r enheten kan inte kommunicera med PayPal eftersom den h\u00e4r versionen av Android \u00e4r f\u00f6r gammal. Uppgradera Android eller f\u00f6rs\u00f6k med en nyare enhet."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bk:Lcom/paypal/android/sdk/fw;

    const-string v2, "Vill du ta bort kortet?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bl:Lcom/paypal/android/sdk/fw;

    const-string v2, "Samtycke misslyckades"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bm:Lcom/paypal/android/sdk/fw;

    const-string v2, "Anslutningen misslyckades"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bn:Lcom/paypal/android/sdk/fw;

    const-string v2, "Inloggningen misslyckades"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bo:Lcom/paypal/android/sdk/fw;

    const-string v2, "Logga in med ditt l\u00f6senord"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bp:Lcom/paypal/android/sdk/fw;

    const-string v2, "Logga in med din pinkod"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bq:Lcom/paypal/android/sdk/fw;

    const-string v2, "Ett \u00f6gonblick \u2026"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->br:Lcom/paypal/android/sdk/fw;

    const-string v2, "Betalningen misslyckades"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bs:Lcom/paypal/android/sdk/fw;

    const-string v2, "Skanna"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bt:Lcom/paypal/android/sdk/fw;

    const-string v2, "Felaktig s\u00e4kerhetskod. F\u00f6rs\u00f6k igen."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bu:Lcom/paypal/android/sdk/fw;

    const-string v2, "Via"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bv:Lcom/paypal/android/sdk/fw;

    const-string v2, "Systemfel. F\u00f6rs\u00f6k igen senare."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|AT"

    const-string v2, "Dela information om de <a href=\'%1$s\'>betalningsalternativ</a> som \u00e4r kopplade till ditt PayPal-konto."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|BE"

    const-string v2, "Dela informationen om de <a href=\'%1$s\'>betalningsalternativ</a> som \u00e4r kopplade till ditt PayPal-konto."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|BG"

    const-string v2, "Dela <a href=\'%1$s\'>betalningsalternativen</a> f\u00f6r din r\u00e4kning tills du drar tillbaka ditt medgivande."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|CH"

    const-string v2, "Dela information om de <a href=\'%1$s\'>betalningsalternativ</a> som \u00e4r kopplade till ditt PayPal-konto."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|CY"

    const-string v2, "Dela <a href=\'%1$s\'>betalningsalternativen</a> f\u00f6r din r\u00e4kning tills du drar tillbaka ditt medgivande."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|CZ"

    const-string v2, "Dela <a href=\'%1$s\'>betalningsalternativen</a> f\u00f6r din r\u00e4kning tills du drar tillbaka ditt medgivande."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|DE"

    const-string v2, "Dela information om de <a href=\'%1$s\'>betalningsalternativ</a> som \u00e4r kopplade till ditt PayPal-konto."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|DK"

    const-string v2, "Dela information om de <a href=\'%1$s\'>betalningsmetoder</a> som \u00e4r kopplade till ditt PayPal-konto."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|EE"

    const-string v2, "Dela <a href=\'%1$s\'>betalningsalternativen</a> f\u00f6r din r\u00e4kning tills du drar tillbaka ditt medgivande."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|ES"

    const-string v2, "Dela information med dem om de <a href=\'%1$s\'>betalningsalternativ</a> som \u00e4r kopplade till ditt PayPal-konto."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|FI"

    const-string v2, "Dela <a href=\'%1$s\'>betalningsalternativen</a> f\u00f6r din r\u00e4kning tills du drar tillbaka ditt medgivande."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|GB"

    const-string v2, "Dela <a href=\'%1$s\'>betalningsalternativen</a> som \u00e4r kopplade till ditt PayPal-konto."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|GR"

    const-string v2, "Dela <a href=\'%1$s\'>betalningsalternativen</a> f\u00f6r din r\u00e4kning tills du drar tillbaka ditt medgivande."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|HU"

    const-string v2, "Dela <a href=\'%1$s\'>betalningsalternativen</a> f\u00f6r din r\u00e4kning tills du drar tillbaka ditt medgivande."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|IE"

    const-string v2, "Dela <a href=\'%1$s\'>betalningsalternativen</a> f\u00f6r din r\u00e4kning tills du drar tillbaka ditt medgivande."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|IT"

    const-string v2, "Dela <a href=\'%1$s\'>betalningsalternativen</a> som \u00e4r kopplade till ditt PayPal-konto."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|LI"

    const-string v2, "Dela <a href=\'%1$s\'>betalningsalternativen</a> f\u00f6r din r\u00e4kning tills du drar tillbaka ditt medgivande."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|LT"

    const-string v2, "Dela <a href=\'%1$s\'>betalningsalternativen</a> f\u00f6r din r\u00e4kning tills du drar tillbaka ditt medgivande."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|LU"

    const-string v2, "Dela <a href=\'%1$s\'>betalningsalternativen</a> f\u00f6r din r\u00e4kning tills du drar tillbaka ditt medgivande."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|LV"

    const-string v2, "Dela <a href=\'%1$s\'>betalningsalternativen</a> f\u00f6r din r\u00e4kning tills du drar tillbaka ditt medgivande."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|MT"

    const-string v2, "Dela <a href=\'%1$s\'>betalningsalternativen</a> f\u00f6r din r\u00e4kning tills du drar tillbaka ditt medgivande."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|NL"

    const-string v2, "Dela informationen om de <a href=\'%1$s\'>betalningsalternativ</a> som \u00e4r kopplade till ditt PayPal-konto."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|NO"

    const-string v2, "Dela information om de <a href=\'%1$s\'>betalningsmetoder</a> som \u00e4r kopplade till ditt PayPal-konto."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|PL"

    const-string v2, "Dela informationen om de <a href=\'%1$s\'>betalningsalternativ</a> som \u00e4r kopplade till ditt PayPal-konto."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|PT"

    const-string v2, "Dela <a href=\'%1$s\'>betalningsalternativen</a> f\u00f6r din r\u00e4kning tills du drar tillbaka ditt medgivande."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|SE"

    const-string v2, "Dela information om de <a href=\'%1$s\'>betalningsmetoder</a> som \u00e4r kopplade till ditt PayPal-konto."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|SI"

    const-string v2, "Dela <a href=\'%1$s\'>betalningsalternativen</a> f\u00f6r din r\u00e4kning tills du drar tillbaka ditt medgivande."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|SK"

    const-string v2, "Dela <a href=\'%1$s\'>betalningsalternativen</a> f\u00f6r din r\u00e4kning tills du drar tillbaka ditt medgivande."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|SM"

    const-string v2, "Dela <a href=\'%1$s\'>betalningsalternativen</a> f\u00f6r din r\u00e4kning tills du drar tillbaka ditt medgivande."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|VA"

    const-string v2, "Dela <a href=\'%1$s\'>betalningsalternativen</a> f\u00f6r din r\u00e4kning tills du drar tillbaka ditt medgivande."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|AU"

    const-string v2, "<p><a href=\'%1$s\'>Godk\u00e4nna avgifter</a> f\u00f6r framtida k\u00f6p hos %2$s som betalas med PayPal. Du ger PayPal i uppdrag att betala alla belopp som beg\u00e4rs av %3$s.</p><p>Mer information finns i <a href=\'https://www.paypal.com/webapps/mpp/ua/recurringpymts-full\'>PayPals avtal om \u00e5terkommande betalningar och fakturering</a>.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|CN"

    const-string v2, "<p><a href=\'%1$s\'>Godk\u00e4nna avgifter</a> f\u00f6r framtida k\u00f6p hos %2$s som betalas med PayPal. Du ger PayPal i uppdrag att betala alla belopp som beg\u00e4rs av %3$s.</p><p>Mer information finns i <a href=\'https://cms.paypal.com/c2/cgi-bin/?cmd=_render-content&content_ID=ua/UserAgreement_full\'>PayPals avtal om \u00e5terkommande betalningar och fakturering</a>.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|MY"

    const-string v2, "<a href=\'%1$s\'>Godk\u00e4nn att pengar dras</a> f\u00f6r framtida k\u00f6p som betalas med PayPal. Du ber PayPal betala alla belopp och godk\u00e4nner detta."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|NZ"

    const-string v2, "<a href=\'%1$s\'>Godk\u00e4nn att pengar dras</a> f\u00f6r framtida k\u00f6p som betalas med PayPal. Du ber PayPal betala alla belopp och godk\u00e4nner detta."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|SG"

    const-string v2, "<a href=\'%1$s\'>Godk\u00e4nn att pengar dras</a> f\u00f6r framtida k\u00f6p som betalas med PayPal. Du ber PayPal betala alla belopp och godk\u00e4nner detta."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|US"

    const-string v2, "Godk\u00e4nn p\u00e5 f\u00f6rhand framtida betalningar fr\u00e5n ditt PayPal-konto utan att logga in p\u00e5 PayPal varje g\u00e5ng. <a href=\'%1$s\'>Se fler villkor</a>, inklusive betalningsmetoder och information om hur du avbryter framtida betalningar."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|AT"

    const-string v2, "Till\u00e5t %2$s att <a href=\'%1$s\'>be om betalning</a> f\u00f6r din r\u00e4kning tills du drar tillbaka ditt medgivande."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|BE"

    const-string v2, "Till\u00e5t %2$s att <a href=\'%1$s\'>be om betalning</a> f\u00f6r din r\u00e4kning tills du drar tillbaka ditt medgivande."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|CH"

    const-string v2, "Till\u00e5t %2$s att <a href=\'%1$s\'>be om betalning</a> f\u00f6r din r\u00e4kning tills du drar tillbaka ditt medgivande."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|DE"

    const-string v2, "Till\u00e5t %2$s att <a href=\'%1$s\'>be om betalning</a> f\u00f6r din r\u00e4kning tills du drar tillbaka ditt medgivande."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|GB"

    const-string v2, "Till\u00e5t %2$s att <a href=\'%1$s\'>be om betalning</a> f\u00f6r din r\u00e4kning tills du drar tillbaka ditt medgivande."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|NL"

    const-string v2, "Till\u00e5t %2$s att <a href=\'%1$s\'>be om betalning</a> f\u00f6r din r\u00e4kning tills du drar tillbaka ditt medgivande."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|PL"

    const-string v2, "Till\u00e5t %2$s att <a href=\'%1$s\'>be om betalning</a> f\u00f6r din r\u00e4kning tills du drar tillbaka ditt medgivande."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|AT"

    const-string v2, "Till\u00e5t %2$s att <a href=\'%1$s\'>\u00f6verf\u00f6ra pengar</a> f\u00f6r din r\u00e4kning tills du drar tillbaka ditt medgivande."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|BE"

    const-string v2, "Till\u00e5t %2$s att <a href=\'%1$s\'>\u00f6verf\u00f6ra pengar</a> f\u00f6r din r\u00e4kning tills du drar tillbaka ditt medgivande."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|CH"

    const-string v2, "Till\u00e5t %2$s att <a href=\'%1$s\'>\u00f6verf\u00f6ra pengar</a> f\u00f6r din r\u00e4kning tills du drar tillbaka ditt medgivande."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|DE"

    const-string v2, "Till\u00e5t %2$s att <a href=\'%1$s\'>\u00f6verf\u00f6ra pengar</a> f\u00f6r din r\u00e4kning tills du drar tillbaka ditt medgivande."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|GB"

    const-string v2, "Till\u00e5t %2$s att <a href=\'%1$s\'>\u00f6verf\u00f6ra pengar</a> f\u00f6r din r\u00e4kning tills du drar tillbaka ditt medgivande."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|NL"

    const-string v2, "Till\u00e5t %2$s att <a href=\'%1$s\'>\u00f6verf\u00f6ra pengar</a> f\u00f6r din r\u00e4kning tills du drar tillbaka ditt medgivande."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|PL"

    const-string v2, "Till\u00e5t %2$s att <a href=\'%1$s\'>\u00f6verf\u00f6ra pengar</a> f\u00f6r din r\u00e4kning tills du drar tillbaka ditt medgivande."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|AT"

    const-string v2, "<h1><strong>Betalningsmetoder</strong></h1><p>PayPal delar bara information om vilka av dina betalningsalternativ som kan anv\u00e4ndas.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|BE"

    const-string v2, "<h1><strong>Betalningsmetoder</strong></h1><p>PayPal delar bara information om vilka av dina betalningsalternativ som kan anv\u00e4ndas.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|BG"

    const-string v2, "<h1><strong>Betalningsmetoder</strong></h1><p>PayPal delar bara information om vilka av dina betalningsalternativ som kan anv\u00e4ndas.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|CH"

    const-string v2, "<h1><strong>Betalningsmetoder</strong></h1><p>PayPal delar bara information om vilka av dina betalningsalternativ som kan anv\u00e4ndas.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|CY"

    const-string v2, "<h1><strong>Betalningsmetoder</strong></h1><p>PayPal delar bara information om vilka av dina betalningsalternativ som kan anv\u00e4ndas.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|CZ"

    const-string v2, "<h1><strong>Betalningsmetoder</strong></h1><p>PayPal delar bara information om vilka av dina betalningsalternativ som kan anv\u00e4ndas.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|DE"

    const-string v2, "<h1><strong>Betalningsmetoder</strong></h1><p>PayPal delar bara information om vilka av dina betalningsalternativ som kan anv\u00e4ndas.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|EE"

    const-string v2, "<h1><strong>Betalningsmetoder</strong></h1><p>PayPal delar bara information om vilka av dina betalningsalternativ som kan anv\u00e4ndas.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|ES"

    const-string v2, "<h1><strong>Betalningsmetoder</strong></h1><p>PayPal delar bara information om vilka av dina betalningsalternativ som kan anv\u00e4ndas.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|FI"

    const-string v2, "<h1><strong>Betalningsmetoder</strong></h1><p>PayPal delar bara information om vilka av dina betalningsalternativ som kan anv\u00e4ndas.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|GR"

    const-string v2, "<h1><strong>Betalningsmetoder</strong></h1><p>PayPal delar bara information om vilka av dina betalningsalternativ som kan anv\u00e4ndas.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|HU"

    const-string v2, "<h1><strong>Betalningsmetoder</strong></h1><p>PayPal delar bara information om vilka av dina betalningsalternativ som kan anv\u00e4ndas.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|IE"

    const-string v2, "<h1><strong>Betalningsmetoder</strong></h1><p>PayPal delar bara information om vilka av dina betalningsalternativ som kan anv\u00e4ndas.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|IT"

    const-string v2, "<h1><strong>Betalningsmetoder</strong></h1><p>PayPal delar bara information om vilka av dina betalningsalternativ som kan anv\u00e4ndas.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|LI"

    const-string v2, "<h1><strong>Betalningsmetoder</strong></h1><p>PayPal delar bara information om vilka av dina betalningsalternativ som kan anv\u00e4ndas.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|LT"

    const-string v2, "<h1><strong>Betalningsmetoder</strong></h1><p>PayPal delar bara information om vilka av dina betalningsalternativ som kan anv\u00e4ndas.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|LU"

    const-string v2, "<h1><strong>Betalningsmetoder</strong></h1><p>PayPal delar bara information om vilka av dina betalningsalternativ som kan anv\u00e4ndas.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|LV"

    const-string v2, "<h1><strong>Betalningsmetoder</strong></h1><p>PayPal delar bara information om vilka av dina betalningsalternativ som kan anv\u00e4ndas.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|MT"

    const-string v2, "<h1><strong>Betalningsmetoder</strong></h1><p>PayPal delar bara information om vilka av dina betalningsalternativ som kan anv\u00e4ndas.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|NL"

    const-string v2, "<h1><strong>Betalningsmetoder</strong></h1><p>PayPal delar bara information om vilka av dina betalningsalternativ som kan anv\u00e4ndas.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|PL"

    const-string v2, "<h1><strong>Betalningsmetoder</strong></h1><p>PayPal delar bara information om vilka av dina betalningsalternativ som kan anv\u00e4ndas.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|PT"

    const-string v2, "<h1><strong>Betalningsmetoder</strong></h1><p>PayPal delar bara information om vilka av dina betalningsalternativ som kan anv\u00e4ndas.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|SI"

    const-string v2, "<h1><strong>Betalningsmetoder</strong></h1><p>PayPal delar bara information om vilka av dina betalningsalternativ som kan anv\u00e4ndas.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|SK"

    const-string v2, "<h1><strong>Betalningsmetoder</strong></h1><p>PayPal delar bara information om vilka av dina betalningsalternativ som kan anv\u00e4ndas.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|SM"

    const-string v2, "<h1><strong>Betalningsmetoder</strong></h1><p>PayPal delar bara information om vilka av dina betalningsalternativ som kan anv\u00e4ndas.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|VA"

    const-string v2, "<h1><strong>Betalningsmetoder</strong></h1><p>PayPal delar bara information om vilka av dina betalningsalternativ som kan anv\u00e4ndas.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|AU"

    const-string v2, "<h1><strong>Avtal f\u00f6r framtida betalningar</strong></h1><p>Med appen simuleras eventuellt en liten testtransaktion f\u00f6r att se till att ditt PayPal-konto kan debiteras senare, men inga pengar \u00f6verf\u00f6rs.</p><p>PayPal-k\u00f6pen betalas med den betalningsmetod du har angett som standard (PayPal-saldo, kopplat bankkonto eller betalkort, i den ordningen). T\u00e4nk p\u00e5 att banken eller kortutf\u00e4rdaren kan ta ut en avgift om det inte finns tillr\u00e4ckligt med pengar f\u00f6r att t\u00e4cka k\u00f6pet.</p><p>Om du vill upph\u00e4va avtalet loggar du in p\u00e5 ditt PayPal-konto och g\u00e5r till <strong>Min profil</strong>. Klicka sedan p\u00e5 <strong>Mina inst\u00e4llningar</strong> och <strong>\u00c4ndra</strong> bredvid \u201dLogga in med PayPal\u201d.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|BR"

    const-string v2, "<h1><strong>Avtal f\u00f6r framtida betalningar</strong></h1><p>En liten testtransaktion simuleras eventuellt med appen f\u00f6r att se till att ditt PayPal-konto kan debiteras senare, men inga pengar \u00f6verf\u00f6rs.</p><p>PayPal-k\u00f6pen betalas med ditt PayPal-saldo eller ditt prim\u00e4ra betalkort.</p><p>Om du vill upph\u00e4va avtalet loggar du in p\u00e5 PayPal-kontot och g\u00e5r till <strong>Min profil</strong> &gt; <strong>Mina inst\u00e4llningar</strong> &gt; <strong>Logga in med PayPal</strong> och tar bort handlaren fr\u00e5n listan.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|CN"

    const-string v2, "<h1><strong>Avtal f\u00f6r framtida betalningar</strong></h1><p>En liten testtransaktion simuleras eventuellt med appen f\u00f6r att se till att ditt PayPal-konto kan debiteras senare, men inga pengar \u00f6verf\u00f6rs.</p><p>PayPal-k\u00f6pen betalas med den betalningsmetod du har angett som standard.</p><p>Om du vill upph\u00e4va avtalet loggar du in p\u00e5 ditt PayPal-konto och g\u00e5r till <strong>Min profil</strong> &gt; <strong>Inst\u00e4llningar</strong> &gt; <strong>Logga in med PayPal</strong> och tar bort handlaren fr\u00e5n listan.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|GB"

    const-string v2, "<h1><strong>Avtal f\u00f6r framtida betalningar</strong></h1><p>Dina framtida PayPal-betalningar betalas med det betalningsalternativ du angett f\u00f6r den h\u00e4r handlaren.</p><p>Om du vill upph\u00e4va avtalet loggar du in p\u00e5 PayPal-kontot och g\u00e5r till <strong>Min profil</strong> &gt; <strong>Mina inst\u00e4llningar</strong> &gt; <strong>Logga in med PayPal</strong> och tar bort handlaren fr\u00e5n listan.</p><p>Avsnittet \u00c5terkommande betalningar i <a href=\'%s\'>PayPals anv\u00e4ndaravtal</a> g\u00e4ller.</p><p>Appen simulerar eventuellt en liten testtransaktion f\u00f6r att se till att du kan g\u00f6ra betalningar fr\u00e5n ditt PayPal-konto, men inga pengar \u00f6verf\u00f6rs.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|HK"

    const-string v2, "<h1><strong>Godk\u00e4nnande f\u00f6r framtida betalningar</strong></h1><p>En liten testtransaktion simuleras eventuellt med appen f\u00f6r att se till att ditt PayPal-konto kan debiteras senare, men inga pengar \u00f6verf\u00f6rs.</p><p>PayPal-k\u00f6pen betalas med den betalningsmetod du har angett som standard.</p><p>Om du vill avbryta godk\u00e4nnandet loggar du in p\u00e5 PayPal-kontot och g\u00e5r till <strong>Min profil</strong> &gt; <strong>Mina kontoinst\u00e4llningar</strong> &gt; <strong>Logga in med PayPal</strong> och tar bort handlaren fr\u00e5n listan.</p><p>Mer information finns i avsnittet \u201dF\u00f6rgodk\u00e4nda betalningar\u201d i <a href=\'%s\'>PayPals anv\u00e4ndaravtal</a>.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|JP"

    const-string v2, "<h1><strong>Godk\u00e4nnande f\u00f6r framtida betalningar</strong></h1><p>En liten testtransaktion simuleras eventuellt med appen f\u00f6r att se till att ditt PayPal-konto kan debiteras senare, men inga pengar \u00f6verf\u00f6rs.</p><p>PayPal-k\u00f6pen betalas med den betalningsmetod du har angett som standard.</p><p>Om du vill avbryta godk\u00e4nnandet loggar du in p\u00e5 PayPal-kontot och g\u00e5r till <strong>Min profil</strong> &gt; <strong>Mina kontoinst\u00e4llningar</strong> &gt; <strong>Logga in med PayPal</strong> och tar bort handlaren fr\u00e5n listan.</p><p>Mer information finns i avsnittet \u201dF\u00f6rgodk\u00e4nda betalningar\u201d i <a href=\'%s\'>PayPals anv\u00e4ndaravtal</a>.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|MX"

    const-string v2, "<h1><strong>Avtal f\u00f6r framtida betalningar</strong></h1><p>En liten testtransaktion simuleras eventuellt med appen f\u00f6r att se till att ditt PayPal-konto kan debiteras senare, men inga pengar \u00f6verf\u00f6rs.</p><p>PayPal-k\u00f6pen betalas med ditt PayPal-saldo eller ditt prim\u00e4ra betalkort.</p><p>Om du vill upph\u00e4va avtalet loggar du in p\u00e5 PayPal-kontot och g\u00e5r till <strong>Min profil</strong> &gt; <strong>Mina inst\u00e4llningar</strong> &gt; <strong>Logga in med PayPal</strong> och tar bort handlaren fr\u00e5n listan.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|MY"

    const-string v2, "<h1><strong>Godk\u00e4nnande f\u00f6r framtida betalningar</strong></h1><p>En liten testtransaktion simuleras eventuellt med appen f\u00f6r att se till att ditt PayPal-konto kan debiteras senare, men inga pengar \u00f6verf\u00f6rs.</p><p>PayPal-k\u00f6pen betalas med den betalningsmetod du har angett som standard.</p><p>Om du vill avbryta godk\u00e4nnandet loggar du in p\u00e5 PayPal-kontot och g\u00e5r till <strong>Min profil</strong> &gt; <strong>Mina kontoinst\u00e4llningar</strong> &gt; <strong>Logga in med PayPal</strong> och tar bort handlaren fr\u00e5n listan.</p><p>Mer information finns i avsnittet \u201dF\u00f6rgodk\u00e4nda betalningar\u201d i <a href=\'%s\'>PayPals anv\u00e4ndaravtal</a>.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|NZ"

    const-string v2, "<h1><strong>Godk\u00e4nnande f\u00f6r framtida betalningar</strong></h1><p>En liten testtransaktion simuleras eventuellt med appen f\u00f6r att se till att ditt PayPal-konto kan debiteras senare, men inga pengar \u00f6verf\u00f6rs.</p><p>PayPal-k\u00f6pen betalas med den betalningsmetod du har angett som standard.</p><p>Om du vill avbryta godk\u00e4nnandet loggar du in p\u00e5 PayPal-kontot och g\u00e5r till <strong>Min profil</strong> &gt; <strong>Mina kontoinst\u00e4llningar</strong> &gt; <strong>Logga in med PayPal</strong> och tar bort handlaren fr\u00e5n listan.</p><p>Mer information finns i avsnittet \u201dF\u00f6rgodk\u00e4nda betalningar\u201d i <a href=\'%s\'>PayPals anv\u00e4ndaravtal</a>.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|SG"

    const-string v2, "<h1><strong>Godk\u00e4nnande f\u00f6r framtida betalningar</strong></h1><p>En liten testtransaktion simuleras eventuellt med appen f\u00f6r att se till att ditt PayPal-konto kan debiteras senare, men inga pengar \u00f6verf\u00f6rs.</p><p>PayPal-k\u00f6pen betalas med den betalningsmetod du har angett som standard.</p><p>Om du vill avbryta godk\u00e4nnandet loggar du in p\u00e5 PayPal-kontot och g\u00e5r till <strong>Min profil</strong> &gt; <strong>Mina kontoinst\u00e4llningar</strong> &gt; <strong>Logga in med PayPal</strong> och tar bort handlaren fr\u00e5n listan.</p><p>Mer information finns i avsnittet \u201dF\u00f6rgodk\u00e4nda betalningar\u201d i <a href=\'%s\'>PayPals anv\u00e4ndaravtal</a>.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|US"

    const-string v2, "<h1><strong>Avtal f\u00f6r framtida betalningar</strong></h1><p>Vid k\u00f6p dras pengar f\u00f6rst fr\u00e5n ditt PayPal-saldo. Om det inte t\u00e4cker summan dras resterande summa fr\u00e5n ditt bankkonto, PayPal Credit, betalkort, och/eller eCheck, i den ordningen.</p><p>G\u00e5 till www.paypal.com <strong>Min profil</strong> &gt; <strong>Mina inst\u00e4llningar</strong> &gt; <strong>Logga in med PayPal</strong> och ta bort handlaren fr\u00e5n listan om du vill upph\u00e4va avtalet.</p><p>Det kan h\u00e4nda att en mindre betalning m\u00e5ste godk\u00e4nnas f\u00f6r att ditt PayPal-konto ska kunna debiteras i framtiden. Godk\u00e4nnandet annulleras sedan och du debiteras inte.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "LOG_IN_TO_PAYPAL|AU"

    const-string v2, "Logga in med PayPal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "LOG_IN_TO_PAYPAL|GB"

    const-string v2, "Logga in med PayPal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|AD"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alla relevanta transaktionsuppgifter delas med handlaren.</p><p>Om du vill dra tillbaka ditt medgivande loggar du in p\u00e5 paypal.com och g\u00e5r till <strong>Min profil</strong>. V\u00e4lj sedan fliken <strong>S\u00e4kerhet</strong>, g\u00e5 till avsnittet <strong>Logga in med PayPal</strong> och ta bort den h\u00e4r handlaren.</p><p>PayPal ansvarar inte f\u00f6r \u00e5tg\u00e4rder eller fel fr\u00e5n handlarens sida.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|AL"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alla relevanta transaktionsuppgifter delas med handlaren.</p><p>Om du vill dra tillbaka ditt medgivande loggar du in p\u00e5 paypal.com och g\u00e5r till <strong>Min profil</strong>. V\u00e4lj sedan fliken <strong>S\u00e4kerhet</strong>, g\u00e5 till avsnittet <strong>Logga in med PayPal</strong> och ta bort den h\u00e4r handlaren.</p><p>PayPal ansvarar inte f\u00f6r \u00e5tg\u00e4rder eller fel fr\u00e5n handlarens sida.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|AT"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alla relevanta transaktionsuppgifter delas med partnern.</p><p>Om du vill dra tillbaka ditt medgivande loggar du in p\u00e5 ditt PayPal-konto och klickar p\u00e5 kugghjulssymbolen. G\u00e5 till <strong>S\u00e4kerhet</strong>, v\u00e4lj <strong>Logga in med PayPal</strong> och ta bort den h\u00e4r partnern.</p><p>PayPal ansvarar inte f\u00f6r \u00e5tg\u00e4rder eller fel fr\u00e5n partnerns sida.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|AU"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alla relevanta transaktionsuppgifter delas med handlaren.</p><p>Om du vill dra tillbaka ditt medgivande loggar du in p\u00e5 paypal.com och g\u00e5r till avsnittet <strong>Logga in med PayPal</strong> under inst\u00e4llningarna f\u00f6r <strong>Min profil</strong> och tar bort handlaren.</p><p>PayPal ansvarar inte f\u00f6r \u00e5tg\u00e4rder eller fel fr\u00e5n partnerns sida.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|BA"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alla relevanta transaktionsuppgifter delas med handlaren.</p><p>Om du vill dra tillbaka ditt medgivande loggar du in p\u00e5 paypal.com och g\u00e5r till <strong>Min profil</strong>. V\u00e4lj sedan fliken <strong>S\u00e4kerhet</strong>, g\u00e5 till avsnittet <strong>Logga in med PayPal</strong> och ta bort den h\u00e4r handlaren.</p><p>PayPal ansvarar inte f\u00f6r \u00e5tg\u00e4rder eller fel fr\u00e5n handlarens sida.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|BE"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alla relevanta transaktionsuppgifter delas med handlaren.</p><p>Om du vill dra tillbaka ditt medgivande loggar du in p\u00e5 ditt PayPal-konto och g\u00e5r till avsnittet <strong>Logga in med PayPal</strong> under inst\u00e4llningarna f\u00f6r <strong>Min profil</strong> och tar bort handlaren.</p><p>PayPal ansvarar inte f\u00f6r \u00e5tg\u00e4rder eller fel fr\u00e5n handlarens sida.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|BG"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alla relevanta transaktionsuppgifter delas med handlaren.</p><p>Om du vill dra tillbaka ditt medgivande loggar du in p\u00e5 paypal.com och g\u00e5r till <strong>Min profil</strong>. V\u00e4lj sedan fliken <strong>S\u00e4kerhet</strong>, g\u00e5 till avsnittet <strong>Logga in med PayPal</strong> och ta bort den h\u00e4r handlaren.</p><p>PayPal ansvarar inte f\u00f6r \u00e5tg\u00e4rder eller fel fr\u00e5n handlarens sida.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|CH"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alla relevanta transaktionsuppgifter delas med partnern.</p><p>Om du vill dra tillbaka ditt medgivande loggar du in p\u00e5 ditt PayPal-konto och klickar p\u00e5 kugghjulssymbolen. G\u00e5 till <strong>S\u00e4kerhet</strong>, v\u00e4lj <strong>Logga in med PayPal</strong> och ta bort den h\u00e4r partnern.</p><p>PayPal ansvarar inte f\u00f6r \u00e5tg\u00e4rder eller fel fr\u00e5n partnerns sida.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|CY"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alla relevanta transaktionsuppgifter delas med handlaren.</p><p>Om du vill dra tillbaka ditt medgivande loggar du in p\u00e5 paypal.com och g\u00e5r till <strong>Min profil</strong>. V\u00e4lj sedan fliken <strong>S\u00e4kerhet</strong>, g\u00e5 till avsnittet <strong>Logga in med PayPal</strong> och ta bort den h\u00e4r handlaren.</p><p>PayPal ansvarar inte f\u00f6r \u00e5tg\u00e4rder eller fel fr\u00e5n handlarens sida.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|CZ"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alla relevanta transaktionsuppgifter delas med handlaren.</p><p>Om du vill dra tillbaka ditt medgivande loggar du in p\u00e5 paypal.com och g\u00e5r till <strong>Min profil</strong>. V\u00e4lj sedan fliken <strong>S\u00e4kerhet</strong>, g\u00e5 till avsnittet <strong>Logga in med PayPal</strong> och ta bort den h\u00e4r handlaren.</p><p>PayPal ansvarar inte f\u00f6r \u00e5tg\u00e4rder eller fel fr\u00e5n handlarens sida.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|DE"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alla relevanta transaktionsuppgifter delas med partnern.</p><p>Om du vill dra tillbaka ditt medgivande loggar du in p\u00e5 ditt PayPal-konto och klickar p\u00e5 kugghjulssymbolen. G\u00e5 till <strong>S\u00e4kerhet</strong>, v\u00e4lj <strong>Logga in med PayPal</strong> och ta bort den h\u00e4r partnern.</p><p>PayPal ansvarar inte f\u00f6r \u00e5tg\u00e4rder eller fel fr\u00e5n partnerns sida.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|DK"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alla relevanta transaktionsuppgifter delas med handlaren.</p><p>Om du vill dra tillbaka ditt medgivande loggar du in p\u00e5 ditt PayPal-konto och g\u00e5r till avsnittet <strong>Logga in med PayPal</strong> under inst\u00e4llningarna f\u00f6r <strong>Min profil</strong> och tar bort handlaren.</p><p>PayPal ansvarar inte f\u00f6r \u00e5tg\u00e4rder eller fel fr\u00e5n handlarens sida.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|EE"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alla relevanta transaktionsuppgifter delas med handlaren.</p><p>Om du vill dra tillbaka ditt medgivande loggar du in p\u00e5 paypal.com och g\u00e5r till <strong>Min profil</strong>. V\u00e4lj sedan fliken <strong>S\u00e4kerhet</strong>, g\u00e5 till avsnittet <strong>Logga in med PayPal</strong> och ta bort den h\u00e4r handlaren.</p><p>PayPal ansvarar inte f\u00f6r \u00e5tg\u00e4rder eller fel fr\u00e5n handlarens sida.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|ES"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alla relevanta transaktionsuppgifter delas med handlaren.</p><p>Om du vill dra tillbaka ditt medgivande loggar du in p\u00e5 ditt PayPal-konto och klickar p\u00e5 kugghjulssymbolen l\u00e4ngst upp till h\u00f6ger. V\u00e4lj sedan <strong>S\u00e4kerhet</strong>, g\u00e5 till avsnittet <strong>Logga in med PayPal</strong> och tar bort handlaren. Om du fortfarande anv\u00e4nder den gamla vyn ska du g\u00e5 till <strong>Min profil</strong>, v\u00e4lja <strong>Mina kontoinst\u00e4llningar</strong>, g\u00e5 till avsnittet <strong>Logga in med PayPal</strong> och ta bort handlaren.</p><p>PayPal ansvarar inte f\u00f6r \u00e5tg\u00e4rder eller fel fr\u00e5n handlarens sida.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|FI"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alla relevanta transaktionsuppgifter delas med handlaren.</p><p>Om du vill dra tillbaka ditt medgivande loggar du in p\u00e5 paypal.com och g\u00e5r till <strong>Min profil</strong>. V\u00e4lj sedan fliken <strong>S\u00e4kerhet</strong>, g\u00e5 till avsnittet <strong>Logga in med PayPal</strong> och ta bort den h\u00e4r handlaren.</p><p>PayPal ansvarar inte f\u00f6r \u00e5tg\u00e4rder eller fel fr\u00e5n handlarens sida.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|GB"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alla relevanta transaktionsuppgifter delas med partnern.</p><p>Om du vill dra tillbaka ditt medgivande loggar du in p\u00e5 ditt PayPal-konto och g\u00e5r till <strong>Min profil</strong> och tar sedan bort partnern under <strong>Logga in med PayPal</strong>.</p><p>PayPal ansvarar inte f\u00f6r \u00e5tg\u00e4rder eller fel fr\u00e5n partnerns sida.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|GR"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alla relevanta transaktionsuppgifter delas med handlaren.</p><p>Om du vill dra tillbaka ditt medgivande loggar du in p\u00e5 paypal.com och g\u00e5r till <strong>Min profil</strong>. V\u00e4lj sedan fliken <strong>S\u00e4kerhet</strong>, g\u00e5 till avsnittet <strong>Logga in med PayPal</strong> och ta bort den h\u00e4r handlaren.</p><p>PayPal ansvarar inte f\u00f6r \u00e5tg\u00e4rder eller fel fr\u00e5n handlarens sida.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|HR"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alla relevanta transaktionsuppgifter delas med handlaren.</p><p>Om du vill dra tillbaka ditt medgivande loggar du in p\u00e5 paypal.com och g\u00e5r till <strong>Min profil</strong>. V\u00e4lj sedan fliken <strong>S\u00e4kerhet</strong>, g\u00e5 till avsnittet <strong>Logga in med PayPal</strong> och ta bort den h\u00e4r handlaren.</p><p>PayPal ansvarar inte f\u00f6r \u00e5tg\u00e4rder eller fel fr\u00e5n handlarens sida.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|HU"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alla relevanta transaktionsuppgifter delas med handlaren.</p><p>Om du vill dra tillbaka ditt medgivande loggar du in p\u00e5 paypal.com och g\u00e5r till <strong>Min profil</strong>. V\u00e4lj sedan fliken <strong>S\u00e4kerhet</strong>, g\u00e5 till avsnittet <strong>Logga in med PayPal</strong> och ta bort den h\u00e4r handlaren.</p><p>PayPal ansvarar inte f\u00f6r \u00e5tg\u00e4rder eller fel fr\u00e5n handlarens sida.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|IE"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alla relevanta transaktionsuppgifter delas med handlaren.</p><p>Om du vill dra tillbaka ditt medgivande loggar du in p\u00e5 paypal.com och g\u00e5r till <strong>Min profil</strong>. V\u00e4lj sedan fliken <strong>S\u00e4kerhet</strong>, g\u00e5 till avsnittet <strong>Logga in med PayPal</strong> och ta bort den h\u00e4r handlaren.</p><p>PayPal ansvarar inte f\u00f6r \u00e5tg\u00e4rder eller fel fr\u00e5n handlarens sida.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|IS"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alla relevanta transaktionsuppgifter delas med handlaren.</p><p>Om du vill dra tillbaka ditt medgivande loggar du in p\u00e5 paypal.com och g\u00e5r till <strong>Min profil</strong>. V\u00e4lj sedan fliken <strong>S\u00e4kerhet</strong>, g\u00e5 till avsnittet <strong>Logga in med PayPal</strong> och ta bort den h\u00e4r handlaren.</p><p>PayPal ansvarar inte f\u00f6r \u00e5tg\u00e4rder eller fel fr\u00e5n handlarens sida.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|IT"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alla relevanta transaktionsuppgifter delas med handlaren.</p><p>Om du vill dra tillbaka ditt medgivande loggar du in p\u00e5 paypal.it och g\u00e5r till <strong>Min profil</strong>. V\u00e4lj sedan fliken <strong>S\u00e4kerhet</strong>, g\u00e5 till <strong>Logga in med PayPal</strong> och ta bort den h\u00e4r handlaren.</p><p>PayPal ansvarar inte f\u00f6r \u00e5tg\u00e4rder eller fel fr\u00e5n handlarens sida.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|LI"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alla relevanta transaktionsuppgifter delas med handlaren.</p><p>Om du vill dra tillbaka ditt medgivande loggar du in p\u00e5 paypal.com och g\u00e5r till <strong>Min profil</strong>. V\u00e4lj sedan fliken <strong>S\u00e4kerhet</strong>, g\u00e5 till avsnittet <strong>Logga in med PayPal</strong> och ta bort den h\u00e4r handlaren.</p><p>PayPal ansvarar inte f\u00f6r \u00e5tg\u00e4rder eller fel fr\u00e5n handlarens sida.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|LT"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alla relevanta transaktionsuppgifter delas med handlaren.</p><p>Om du vill dra tillbaka ditt medgivande loggar du in p\u00e5 paypal.com och g\u00e5r till <strong>Min profil</strong>. V\u00e4lj sedan fliken <strong>S\u00e4kerhet</strong>, g\u00e5 till avsnittet <strong>Logga in med PayPal</strong> och ta bort den h\u00e4r handlaren.</p><p>PayPal ansvarar inte f\u00f6r \u00e5tg\u00e4rder eller fel fr\u00e5n handlarens sida.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|LU"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alla relevanta transaktionsuppgifter delas med handlaren.</p><p>Om du vill dra tillbaka ditt medgivande loggar du in p\u00e5 paypal.com och g\u00e5r till <strong>Min profil</strong>. V\u00e4lj sedan fliken <strong>S\u00e4kerhet</strong>, g\u00e5 till avsnittet <strong>Logga in med PayPal</strong> och ta bort den h\u00e4r handlaren.</p><p>PayPal ansvarar inte f\u00f6r \u00e5tg\u00e4rder eller fel fr\u00e5n handlarens sida.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|LV"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alla relevanta transaktionsuppgifter delas med handlaren.</p><p>Om du vill dra tillbaka ditt medgivande loggar du in p\u00e5 paypal.com och g\u00e5r till <strong>Min profil</strong>. V\u00e4lj sedan fliken <strong>S\u00e4kerhet</strong>, g\u00e5 till avsnittet <strong>Logga in med PayPal</strong> och ta bort den h\u00e4r handlaren.</p><p>PayPal ansvarar inte f\u00f6r \u00e5tg\u00e4rder eller fel fr\u00e5n handlarens sida.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|MT"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alla relevanta transaktionsuppgifter delas med handlaren.</p><p>Om du vill dra tillbaka ditt medgivande loggar du in p\u00e5 paypal.com och g\u00e5r till <strong>Min profil</strong>. V\u00e4lj sedan fliken <strong>S\u00e4kerhet</strong>, g\u00e5 till avsnittet <strong>Logga in med PayPal</strong> och ta bort den h\u00e4r handlaren.</p><p>PayPal ansvarar inte f\u00f6r \u00e5tg\u00e4rder eller fel fr\u00e5n handlarens sida.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|NL"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alla relevanta transaktionsuppgifter delas med handlaren.</p><p>Om du vill dra tillbaka ditt medgivande loggar du in p\u00e5 ditt PayPal-konto och g\u00e5r till avsnittet <strong>Logga in med PayPal</strong> under inst\u00e4llningarna f\u00f6r <strong>Min profil</strong> och tar bort handlaren.</p><p>PayPal ansvarar inte f\u00f6r \u00e5tg\u00e4rder eller fel fr\u00e5n handlarens sida.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|NO"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alla relevanta transaktionsuppgifter delas med handlaren.</p><p>Om du vill dra tillbaka ditt medgivande loggar du in p\u00e5 ditt PayPal-konto och g\u00e5r till avsnittet <strong>Logga in med PayPal</strong> under inst\u00e4llningarna f\u00f6r <strong>Min profil</strong> och tar bort handlaren.</p><p>PayPal ansvarar inte f\u00f6r \u00e5tg\u00e4rder eller fel fr\u00e5n handlarens sida.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|PL"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alla relevanta transaktionsuppgifter delas med handlaren.</p><p>Om du vill dra tillbaka ditt medgivande loggar du in p\u00e5 ditt PayPal-konto och g\u00e5r till avsnittet <strong>Logga in med PayPal</strong> under inst\u00e4llningarna f\u00f6r <strong>Min profil</strong> och tar bort handlaren.</p><p>PayPal ansvarar inte f\u00f6r \u00e5tg\u00e4rder eller fel fr\u00e5n handlarens sida.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|PT"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alla relevanta transaktionsuppgifter delas med handlaren.</p><p>Om du vill dra tillbaka ditt medgivande loggar du in p\u00e5 paypal.com och g\u00e5r till <strong>Min profil</strong>. V\u00e4lj sedan fliken <strong>S\u00e4kerhet</strong>, g\u00e5 till avsnittet <strong>Logga in med PayPal</strong> och ta bort den h\u00e4r handlaren.</p><p>PayPal ansvarar inte f\u00f6r \u00e5tg\u00e4rder eller fel fr\u00e5n handlarens sida.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|RO"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alla relevanta transaktionsuppgifter delas med handlaren.</p><p>Om du vill dra tillbaka ditt medgivande loggar du in p\u00e5 paypal.com och g\u00e5r till <strong>Min profil</strong>. V\u00e4lj sedan fliken <strong>S\u00e4kerhet</strong>, g\u00e5 till avsnittet <strong>Logga in med PayPal</strong> och ta bort den h\u00e4r handlaren.</p><p>PayPal ansvarar inte f\u00f6r \u00e5tg\u00e4rder eller fel fr\u00e5n handlarens sida.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|RU"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alla relevanta transaktionsuppgifter delas med partnern.</p><p>Om du vill dra tillbaka ditt medgivande loggar du in p\u00e5 paypal.ru och klickar p\u00e5 kugghjulssymbolen l\u00e4ngst upp till h\u00f6ger. V\u00e4lj sedan fliken <strong>S\u00e4kerhet</strong>, g\u00e5 till avsnittet <strong>Logga in med PayPal</strong> och ta bort den h\u00e4r partnern.</p><p>PayPal ansvarar inte f\u00f6r \u00e5tg\u00e4rder eller fel fr\u00e5n partnerns sida.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|SE"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alla relevanta transaktionsuppgifter delas med handlaren.</p><p>Om du vill dra tillbaka ditt medgivande loggar du in p\u00e5 ditt PayPal-konto och g\u00e5r till avsnittet <strong>Logga in med PayPal</strong> under inst\u00e4llningarna f\u00f6r <strong>Min profil</strong> och tar bort handlaren.</p><p>PayPal ansvarar inte f\u00f6r \u00e5tg\u00e4rder eller fel fr\u00e5n handlarens sida.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|SI"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alla relevanta transaktionsuppgifter delas med handlaren.</p><p>Om du vill dra tillbaka ditt medgivande loggar du in p\u00e5 paypal.com och g\u00e5r till <strong>Min profil</strong>. V\u00e4lj sedan fliken <strong>S\u00e4kerhet</strong>, g\u00e5 till avsnittet <strong>Logga in med PayPal</strong> och ta bort den h\u00e4r handlaren.</p><p>PayPal ansvarar inte f\u00f6r \u00e5tg\u00e4rder eller fel fr\u00e5n handlarens sida.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|SK"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alla relevanta transaktionsuppgifter delas med handlaren.</p><p>Om du vill dra tillbaka ditt medgivande loggar du in p\u00e5 paypal.com och g\u00e5r till <strong>Min profil</strong>. V\u00e4lj sedan fliken <strong>S\u00e4kerhet</strong>, g\u00e5 till avsnittet <strong>Logga in med PayPal</strong> och ta bort den h\u00e4r handlaren.</p><p>PayPal ansvarar inte f\u00f6r \u00e5tg\u00e4rder eller fel fr\u00e5n handlarens sida.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|SM"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alla relevanta transaktionsuppgifter delas med handlaren.</p><p>Om du vill dra tillbaka ditt medgivande loggar du in p\u00e5 paypal.com och g\u00e5r till <strong>Min profil</strong>. V\u00e4lj sedan fliken <strong>S\u00e4kerhet</strong>, g\u00e5 till avsnittet <strong>Logga in med PayPal</strong> och ta bort den h\u00e4r handlaren.</p><p>PayPal ansvarar inte f\u00f6r \u00e5tg\u00e4rder eller fel fr\u00e5n handlarens sida.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|TR"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alla relevanta transaktionsuppgifter delas med handlaren.</p><p>Om du vill dra tillbaka ditt medgivande loggar du in p\u00e5 paypal.com.tr och klickar p\u00e5 kugghjulssymbolen l\u00e4ngst upp till h\u00f6ger. V\u00e4lj sedan fliken <strong>S\u00e4kerhet</strong>, g\u00e5 till avsnittet <strong>Logga in med PayPal</strong> och ta bort den h\u00e4r partnern.</p><p>PayPal ansvarar inte f\u00f6r \u00e5tg\u00e4rder eller fel fr\u00e5n handlarens sida.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|UA"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alla relevanta transaktionsuppgifter delas med handlaren.</p><p>Om du vill dra tillbaka ditt medgivande loggar du in p\u00e5 paypal.com och g\u00e5r till <strong>Min profil</strong>. V\u00e4lj sedan fliken <strong>S\u00e4kerhet</strong>, g\u00e5 till avsnittet <strong>Logga in med PayPal</strong> och ta bort den h\u00e4r handlaren.</p><p>PayPal ansvarar inte f\u00f6r \u00e5tg\u00e4rder eller fel fr\u00e5n handlarens sida.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|US"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alla relevanta transaktionsuppgifter delas med handlaren.</p><p>Om du vill dra tillbaka ditt medgivande loggar du in p\u00e5 paypal.com och g\u00e5r till avsnittet <strong>Logga in med PayPal</strong> under inst\u00e4llningarna f\u00f6r <strong>Min profil</strong> och tar bort handlaren.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|VA"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alla relevanta transaktionsuppgifter delas med handlaren.</p><p>Om du vill dra tillbaka ditt medgivande loggar du in p\u00e5 paypal.com och g\u00e5r till <strong>Min profil</strong>. V\u00e4lj sedan fliken <strong>S\u00e4kerhet</strong>, g\u00e5 till avsnittet <strong>Logga in med PayPal</strong> och ta bort den h\u00e4r handlaren.</p><p>PayPal ansvarar inte f\u00f6r \u00e5tg\u00e4rder eller fel fr\u00e5n handlarens sida.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|ZA"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alla relevanta transaktionsuppgifter delas med handlaren.</p><p>Om du vill dra tillbaka ditt medgivande loggar du in p\u00e5 paypal.com och g\u00e5r till <strong>Min profil</strong>. V\u00e4lj sedan fliken <strong>S\u00e4kerhet</strong>, g\u00e5 till avsnittet <strong>Logga in med PayPal</strong> och ta bort den h\u00e4r handlaren.</p><p>PayPal ansvarar inte f\u00f6r \u00e5tg\u00e4rder eller fel fr\u00e5n handlarens sida.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "AMOUNT_MISMATCH"

    const-string v2, "Totalbeloppet f\u00f6r objekten i kundvagnen matchar inte f\u00f6rs\u00e4ljningsbeloppet."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_ALREADY_COMPLETED"

    const-string v2, "Godk\u00e4nnandet har redan slutf\u00f6rts."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_CANNOT_BE_VOIDED"

    const-string v2, "Godk\u00e4nnandets nuvarande status g\u00f6r att det inte kan annulleras."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_EXPIRED"

    const-string v2, "Godk\u00e4nnandet har g\u00e5tt ut."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_ID_DOES_NOT_EXIST"

    const-string v2, "Det id f\u00f6r godk\u00e4nnande som har beg\u00e4rts finns inte."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_VOIDED"

    const-string v2, "Ditt godk\u00e4nnande har annullerats."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "CANNOT_REAUTH_CHILD_AUTHORIZATION"

    const-string v2, "Det g\u00e5r endast att omgodk\u00e4nna det ursprungliga godk\u00e4nnandet, inte ett omgodk\u00e4nnande."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "CANNOT_REAUTH_INSIDE_HONOR_PERIOD"

    const-string v2, "Det \u00e4r inte till\u00e5tet att omgodk\u00e4nna inom garantiperioden."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "CAPTURE_AMOUNT_LIMIT_EXCEEDED"

    const-string v2, "Beloppet \u00f6verskrider den till\u00e5tna gr\u00e4nsen."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "CARD_TOKEN_PAYER_MISMATCH"

    const-string v2, "Det gick inte att komma \u00e5t de sparade kortuppgifterna."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "CREDIT_CARD_CVV_CHECK_FAILED"

    const-string v2, "Kortuppgifterna \u00e4r ogiltiga. Korrigera och skicka igen."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "CREDIT_CARD_REFUSED"

    const-string v2, "Kortet nekades."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "CURRENCY_MISMATCH"

    const-string v2, "Inkasseringsvalutan m\u00e5ste vara samma som valutan f\u00f6r godk\u00e4nnandet."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "CURRENCY_NOT_ALLOWED"

    const-string v2, "Den h\u00e4r valutan st\u00f6ds inte f\u00f6r n\u00e4rvarande av PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "DATA_RETRIEVAL"

    const-string v2, "Systemfel. F\u00f6rs\u00f6k igen senare."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "DUPLICATE_REQUEST_ID"

    const-string v2, "Systemfel. F\u00f6rs\u00f6k igen senare."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "EXPIRED_CREDIT_CARD"

    const-string v2, "Kortet har upph\u00f6rt att g\u00e4lla"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "EXPIRED_CREDIT_CARD_TOKEN"

    const-string v2, "Informationen f\u00f6r det h\u00e4r kortet finns inte l\u00e4ngre sparad.\nSkicka igen."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "FEATURE_UNSUPPORTED_FOR_PAYEE"

    const-string v2, "Funktionen st\u00f6ds inte f\u00f6r betalningsmottagaren."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "FULL_REFUND_NOT_ALLOWED_AFTER_PARTIAL_REFUND"

    const-string v2, "Transaktionen har delvis \u00e5terbetalats."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "IMMEDIATE_PAY_NOT_SUPPORTED"

    const-string v2, "Direktbetalning st\u00f6ds inte f\u00f6r det h\u00e4r."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "INSTRUMENT_DECLINED"

    const-string v2, "Den betalningsmetod du valde godk\u00e4ndes inte. V\u00e4lj en annan betalningsmetod."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "INSUFFICIENT_FUNDS"

    const-string v2, "K\u00f6paren kan inte betala \u2013 pengar saknas."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "INTERNAL_SERVICE_ERROR"

    const-string v2, "Systemfel. F\u00f6rs\u00f6k igen senare."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "INVALID_ACCOUNT_NUMBER"

    const-string v2, "Kontonumret finns inte."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "INVALID_ARGUMENT"

    const-string v2, "Transaktionen nekades p\u00e5 grund av ett ogiltigt argument"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "INVALID_CITY_STATE_ZIP"

    const-string v2, "Ogiltig kombination av ort/delstat/postnummer."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "INVALID_FACILITATOR_CONFIGURATION"

    const-string v2, "Den h\u00e4r transaktionen kan inte behandlas p\u00e5 grund av ogiltig konfiguration hos partnern."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "INVALID_PAYER_ID"

    const-string v2, "Systemfel (betalarens id \u00e4r ogiltigt). F\u00f6rs\u00f6k igen senare."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "INVALID_RESOURCE_ID"

    const-string v2, "Systemfel. F\u00f6rs\u00f6k igen senare."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "PAYEE_ACCOUNT_INVALID"

    const-string v2, "Det finns ingen bekr\u00e4ftad e-postadress f\u00f6r betalningsmottagarens konto."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "PAYEE_ACCOUNT_LOCKED_OR_CLOSED"

    const-string v2, "Den h\u00e4r s\u00e4ljaren kan inte ta emot betalningar just nu."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "PAYEE_ACCOUNT_NO_CONFIRMED_EMAIL"

    const-string v2, "Det finns ingen bekr\u00e4ftad e-postadress f\u00f6r betalningsmottagarens konto."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "PAYEE_ACCOUNT_RESTRICTED"

    const-string v2, "Den h\u00e4r s\u00e4ljaren kan inte ta emot betalningar just nu."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "PAYER_ACCOUNT_LOCKED_OR_CLOSED"

    const-string v2, "Ditt konto \u00e4r sp\u00e4rrat eller st\u00e4ngt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "PAYER_ACCOUNT_RESTRICTED"

    const-string v2, "Ditt konto \u00e4r begr\u00e4nsat."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "PAYER_CANNOT_PAY"

    const-string v2, "Du kan inte betala den h\u00e4r transaktionen med PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "PAYER_EMPTY_BILLING_ADDRESS"

    const-string v2, "Faktureringsadress kr\u00e4vs f\u00f6r korttransaktioner som inte g\u00f6rs med PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "PAYER_ID_MISSING_FOR_CARD_TOKEN"

    const-string v2, "Det gick inte att komma \u00e5t de sparade kortuppgifterna."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_APPROVAL_EXPIRED"

    const-string v2, "Godk\u00e4nnandet av betalningen har upph\u00f6rt att g\u00e4lla."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_EXPIRED"

    const-string v2, "Betalningen har upph\u00f6rt att g\u00e4lla."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_NOT_APPROVED_FOR_EXECUTION"

    const-string v2, "Betalaren inte har godk\u00e4nt betalningen."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_REQUEST_ID_INVALID"

    const-string v2, "PayPals id f\u00f6r beg\u00e4ran \u00e4r ogiltigt. F\u00f6rs\u00f6k igen senare."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_STATE_INVALID"

    const-string v2, "Denna beg\u00e4ran \u00e4r ogiltig p\u00e5 grund av betalningens nuvarande status."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "PERMISSION_DENIED"

    const-string v2, "Det finns inget tillst\u00e5nd f\u00f6r den beg\u00e4rda \u00e5tg\u00e4rden."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "REFUND_EXCEEDED_TRANSACTION_AMOUNT"

    const-string v2, "Den beg\u00e4rda \u00e5terbetalningen \u00f6verskrider beloppet f\u00f6r den ursprungliga transaktionen."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "REFUND_TIME_LIMIT_EXCEEDED"

    const-string v2, "Transaktionen \u00e4r f\u00f6r gammal f\u00f6r att \u00e5terbetalas."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "REQUIRED_SCOPE_MISSING"

    const-string v2, "Systemfel. F\u00f6rs\u00f6k igen senare."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "TOO_MANY_REAUTHORIZATIONS"

    const-string v2, "Inga fler omgodk\u00e4nnanden \u00e4r till\u00e5tna f\u00f6r det h\u00e4r godk\u00e4nnandet."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_ALREADY_REFUNDED"

    const-string v2, "Transaktionen har redan \u00e5terbetalats."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_LIMIT_EXCEEDED"

    const-string v2, "Beloppet \u00f6verskrider den till\u00e5tna gr\u00e4nsen."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_REFUSED"

    const-string v2, "Transaktionen nekades."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_REFUSED_BY_PAYPAL_RISK"

    const-string v2, "Transaktionen nekades."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_REFUSED_PAYEE_PREFERENCE"

    const-string v2, "Handlarens profil \u00e4r inst\u00e4lld p\u00e5 att automatiskt neka vissa transaktioner."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "UNKNOWN_ERROR"

    const-string v2, "Systemfel. F\u00f6rs\u00f6k igen senare."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "UNSUPPORTED_PAYEE_COUNTRY"

    const-string v2, "Landet st\u00f6ds inte."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "VALIDATION_ERROR"

    const-string v2, "Betalningsuppgifterna \u00e4r ogiltiga. Korrigera och skicka igen."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "ORDER_ALREADY_COMPLETED"

    const-string v2, "Best\u00e4llningen har redan annullerats, g\u00e5tt ut eller slutf\u00f6rts."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "MAXIMUM_ALLOWED_AUTHORIZATION_REACHED_FOR_ORDER"

    const-string v2, "H\u00f6gsta antal till\u00e5tna tillst\u00e5nd f\u00f6r best\u00e4llningen har uppn\u00e5tts."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "ORDER_VOIDED"

    const-string v2, "Din order har annullerats."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "ORDER_CANNOT_BE_VOIDED"

    const-string v2, "Best\u00e4llningen \u00e4r i ett skede som inte medger annullering."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "INVALID_EXPERIENCE_PROFILE_ID"

    const-string v2, "Systemfel. F\u00f6rs\u00f6k igen senare."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "UNAUTHORIZED_PAYMENT"

    const-string v2, "Handlaren tar inte emot den h\u00e4r betalningstypen."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "DCC_UNSUPPORTED_CURRENCY_CC_TYPE"

    const-string v2, "Valutan st\u00f6ds inte f\u00f6r korttypen."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "DCC_CC_TYPE_NOT_SUPPORTED"

    const-string v2, "Korttypen st\u00f6ds inte."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "ADDRESS_ADDITION_ERROR"

    const-string v2, "Fel p\u00e5tr\u00e4ffades n\u00e4r en leveransadress skulle l\u00e4ggas till PayPal-kontot."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "DUPLICATE_TRANSACTION"

    const-string v2, "Dubblettransaktion."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "INVALID_SHIPPING_ADDRESS"

    const-string v2, "Den angivna leveransadressen \u00e4r ogiltig."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR"

    const-string v2, "Det uppstod ett problem n\u00e4r betalningen skulle registreras. Kontrollera ditt konto p\u00e5 PayPals webbplats."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_EXPIRED_PAYMENT_CARD"

    const-string v2, "Det uppstod ett problem n\u00e4r betalningen skulle registreras \u2013 kortet har upph\u00f6rt att g\u00e4lla. Kontrollera ditt konto p\u00e5 PayPals webbplats."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_INSTANT_PAYMENT_REQUIRED"

    const-string v2, "Det uppstod ett problem n\u00e4r betalningen skulle registreras \u2013 direktbetalning kr\u00e4vs, t.ex. med ett betalkort. Kontrollera ditt konto p\u00e5 PayPals webbplats."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_NEED_CONFIRMED_CARD"

    const-string v2, "Det uppstod ett problem n\u00e4r betalningen skulle registreras \u2013 kortet m\u00e5ste bekr\u00e4ftas. Kontrollera ditt konto p\u00e5 PayPals webbplats."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_NEED_PHONE_NUMBER"

    const-string v2, "Det uppstod ett problem n\u00e4r betalningen skulle registreras \u2013 kontot m\u00e5ste inneh\u00e5lla ett telefonnummer enligt villkoren f\u00f6r appen. Kontrollera ditt konto p\u00e5 PayPals webbplats."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_NEED_VALID_FUNDING_INSTRUMENT"

    const-string v2, "Det uppstod ett problem n\u00e4r betalningen skulle registreras \u2013 kontot beh\u00f6ver en giltig betalningsmetod, t.ex. ett bankkonto eller betalkort. Kontrollera ditt konto p\u00e5 PayPals webbplats."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_NEGATIVE_BALANCE"

    const-string v2, "Det uppstod ett problem n\u00e4r betalningen skulle registreras \u2013 saldot \u00e4r \u00f6vertrasserat. Kontrollera ditt konto p\u00e5 PayPals webbplats."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_SENDING_LIMIT_REACHED"

    const-string v2, "Det uppstod ett problem n\u00e4r betalningen skulle registreras \u2013 du har kommit upp till \u00f6verf\u00f6ringsgr\u00e4nsen. Kontrollera ditt konto p\u00e5 PayPals webbplats."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "AUTH_RC_RISK_FAILURE"

    const-string v2, "Nekad p\u00e5 grund av risk."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "AUTH_RC_OFAC_BLOCKED_IP"

    const-string v2, "Obeh\u00f6rig klient."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "AUTH_RC_IP_COMPLIANCE_FAILURE"

    const-string v2, "Obeh\u00f6rig klient."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "invalid_user"

    const-string v2, "Fel anv\u00e4ndarnamn/l\u00f6senord. F\u00f6rs\u00f6k igen."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "locked_user"

    const-string v2, "Ditt PayPal-konto har tillf\u00e4lligt l\u00e5sts. F\u00f6rs\u00f6k igen senare eller g\u00e5 till www.paypal.com f\u00f6r att l\u00e5sa upp ditt PayPal-konto direkt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "max_attempts_exceeded"

    const-string v2, "F\u00f6r m\u00e5nga misslyckade inloggningsf\u00f6rs\u00f6k. F\u00f6rs\u00f6k igen senare."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "invalid_request"

    const-string v2, "Ett fel har intr\u00e4ffat."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "unauthorized_client"

    const-string v2, "Beg\u00e4ran medges ej."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "access_denied"

    const-string v2, "Beg\u00e4ran medges ej."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "unsupported_response_type"

    const-string v2, "Ett fel har intr\u00e4ffat."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "invalid_scope"

    const-string v2, "Beg\u00e4ran medges ej."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "server_error"

    const-string v2, "Systemfel. F\u00f6rs\u00f6k igen senare."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "temporarily_unavailable"

    const-string v2, "Systemfel. F\u00f6rs\u00f6k igen senare."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "stepup_required"

    const-string v2, "Det g\u00e5r inte att slutf\u00f6ra din inloggning just nu. F\u00f6rs\u00f6k igen senare eller g\u00e5 till www.paypal.com om du har n\u00e5gra s\u00e4kerhetsfr\u00e5gor om ditt PayPal-konto."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    const-string v1, "account_locked_generate_challenge_limit_exceeded"

    const-string v2, "F\u00f6r m\u00e5nga inloggningsf\u00f6rs\u00f6k. F\u00f6rs\u00f6k igen senare eller kontakta PayPal f\u00f6r att f\u00e5 hj\u00e4lp."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    const-string v0, "sv"

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Enum;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    check-cast p1, Lcom/paypal/android/sdk/fw;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fw;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    sget-object v1, Lcom/paypal/android/sdk/ad;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_2d
    return-object v0

    :cond_2e
    sget-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2d
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/paypal/android/sdk/ad;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
