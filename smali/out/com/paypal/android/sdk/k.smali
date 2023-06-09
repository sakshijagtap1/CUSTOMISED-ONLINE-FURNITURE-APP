.class public final Lcom/paypal/android/sdk/k;
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

    sput-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->a:Lcom/paypal/android/sdk/fw;

    const-string v2, "Zustimmen und zahlen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->b:Lcom/paypal/android/sdk/fw;

    const-string v2, "und andere"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->c:Lcom/paypal/android/sdk/fw;

    const-string v2, "Authentifizierung"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->d:Lcom/paypal/android/sdk/fw;

    const-string v2, "Zur\u00fcck"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->e:Lcom/paypal/android/sdk/fw;

    const-string v2, "Alternative"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->f:Lcom/paypal/android/sdk/fw;

    const-string v2, "Abbrechen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->g:Lcom/paypal/android/sdk/fw;

    const-string v2, "American Express"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->h:Lcom/paypal/android/sdk/fw;

    const-string v2, "Carta Aura"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->i:Lcom/paypal/android/sdk/fw;

    const-string v2, "Carte Aurore"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->j:Lcom/paypal/android/sdk/fw;

    const-string v2, "Carta Prepagata PayPal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->k:Lcom/paypal/android/sdk/fw;

    const-string v2, "Carte Bancaire"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->l:Lcom/paypal/android/sdk/fw;

    const-string v2, "Cofinoga"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->m:Lcom/paypal/android/sdk/fw;

    const-string v2, "Delta"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->n:Lcom/paypal/android/sdk/fw;

    const-string v2, "Discover"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->o:Lcom/paypal/android/sdk/fw;

    const-string v2, "Electron"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->p:Lcom/paypal/android/sdk/fw;

    const-string v2, "JCB"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->q:Lcom/paypal/android/sdk/fw;

    const-string v2, "Maestro"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->r:Lcom/paypal/android/sdk/fw;

    const-string v2, "MasterCard"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->s:Lcom/paypal/android/sdk/fw;

    const-string v2, "Postepay"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->t:Lcom/paypal/android/sdk/fw;

    const-string v2, "4 \u00e9toiles"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->u:Lcom/paypal/android/sdk/fw;

    const-string v2, "Tarjeta Aurora"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->v:Lcom/paypal/android/sdk/fw;

    const-string v2, "Visa"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->w:Lcom/paypal/android/sdk/fw;

    const-string v2, "Zahlungsmethode \u00e4ndern"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->x:Lcom/paypal/android/sdk/fw;

    const-string v2, "Girokonto"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->y:Lcom/paypal/android/sdk/fw;

    const-string v2, "Ger\u00e4t wird \u00fcberpr\u00fcft\u2026"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->z:Lcom/paypal/android/sdk/fw;

    const-string v2, "Kreditkartendaten l\u00f6schen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->A:Lcom/paypal/android/sdk/fw;

    const-string v2, "Best\u00e4tigen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->B:Lcom/paypal/android/sdk/fw;

    const-string v2, "M\u00f6chten Sie Ihre Kreditkartendaten wirklich l\u00f6schen?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->C:Lcom/paypal/android/sdk/fw;

    const-string v2, "Kreditkarte belasten"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->D:Lcom/paypal/android/sdk/fw;

    const-string v2, "M\u00f6chten Sie sich wirklich ausloggen?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->E:Lcom/paypal/android/sdk/fw;

    const-string v2, "Zahlen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->F:Lcom/paypal/android/sdk/fw;

    const-string v2, "Zustimmen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->G:Lcom/paypal/android/sdk/fw;

    const-string v2, "Konto er\u00f6ffnet am"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->H:Lcom/paypal/android/sdk/fw;

    const-string v2, "Kontostatus"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->I:Lcom/paypal/android/sdk/fw;

    const-string v2, "Kontotyp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->J:Lcom/paypal/android/sdk/fw;

    const-string v2, "Adresse"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->K:Lcom/paypal/android/sdk/fw;

    const-string v2, "Altersgruppe"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->L:Lcom/paypal/android/sdk/fw;

    const-string v2, "Geburtsdatum"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->M:Lcom/paypal/android/sdk/fw;

    const-string v2, "E-Mail-Adresse"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->N:Lcom/paypal/android/sdk/fw;

    const-string v2, "Vollst\u00e4ndiger Name"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->O:Lcom/paypal/android/sdk/fw;

    const-string v2, "Geschlecht"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->P:Lcom/paypal/android/sdk/fw;

    const-string v2, "Sprache"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->Q:Lcom/paypal/android/sdk/fw;

    const-string v2, "L\u00e4ndereinstellung"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->R:Lcom/paypal/android/sdk/fw;

    const-string v2, "Telefon"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->S:Lcom/paypal/android/sdk/fw;

    const-string v2, "Zeitzone"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->T:Lcom/paypal/android/sdk/fw;

    const-string v2, "Folgende Informationen weitergeben: %s."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->U:Lcom/paypal/android/sdk/fw;

    const-string v2, "PayPal Express verwenden."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->V:Lcom/paypal/android/sdk/fw;

    const-string v2, "%s bittet um folgende Zustimmung:"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->W:Lcom/paypal/android/sdk/fw;

    const-string v2, "Sie genehmigen die Weitergabe von Informationen \u00fcber die in Ihrem PayPal-Konto hinterlegten <a href=\'%1$s\'>Zahlungsmethoden</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->X:Lcom/paypal/android/sdk/fw;

    const-string v2, "Zahlungsquellen anzeigen, damit Sie bei der Zahlung w\u00e4hlen k\u00f6nnen."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->Y:Lcom/paypal/android/sdk/fw;

    const-string v2, "Sie <a href=\'%1$s\'>autorisieren Abbuchungen f\u00fcr zuk\u00fcnftige PayPal-Zahlungen</a> bei %2$s. Sie weisen PayPal an, die von %3$s geforderten Betr\u00e4ge zu zahlen."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->Z:Lcom/paypal/android/sdk/fw;

    const-string v2, "Sie stimmen zu, dass der H\u00e4ndler seine Kundenkarte Ihrer E-B\u00f6rse hinzuf\u00fcgt und sie dort verwaltet."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aa:Lcom/paypal/android/sdk/fw;

    const-string v2, "Sie stimmen den <a href=\'%2$s\'>Datenschutzgrunds\u00e4tzen</a> und den <a href=\'%3$s\'>Nutzungsbedingungen</a> von %1$s zu."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->ab:Lcom/paypal/android/sdk/fw;

    const-string v2, "Sie gestatten dem H\u00e4ndler, bis auf Widerruf in Ihrem Namen <a href=\'%1$s\'>Geld anzufordern</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->ac:Lcom/paypal/android/sdk/fw;

    const-string v2, "Sie gestatten dem H\u00e4ndler, bis auf Widerruf in Ihrem Namen <a href=\'%1$s\'>Geld zu senden</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->ad:Lcom/paypal/android/sdk/fw;

    const-string v2, "Zustimmen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->ae:Lcom/paypal/android/sdk/fw;

    const-string v2, "E-Mail-Adresse"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->af:Lcom/paypal/android/sdk/fw;

    const-string v2, "Beispieldaten"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->ag:Lcom/paypal/android/sdk/fw;

    const-string v2, "Sandbox"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->ah:Lcom/paypal/android/sdk/fw;

    const-string v2, "G\u00fcltig bis"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->ai:Lcom/paypal/android/sdk/fw;

    const-string v2, "<h1><strong>Zahlungsmethoden</strong></h1><p>PayPal gibt nur weiter, welche Zahlungsmethoden verf\u00fcgbar sind.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aj:Lcom/paypal/android/sdk/fw;

    const-string v2, "Passwort vergessen?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->ak:Lcom/paypal/android/sdk/fw;

    const-string v2, "Von"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->al:Lcom/paypal/android/sdk/fw;

    const-string v2, "Wie m\u00f6chten Sie Ihre weiteren Zahlungen an %1$s finanzieren?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->am:Lcom/paypal/android/sdk/fw;

    const-string v2, "<h1><strong>Abbuchungsvereinbarung</strong></h1><p>F\u00fcr zuk\u00fcnftige PayPal-Zahlungen bei diesem H\u00e4ndler wird Ihre Standardzahlungsquelle verwendet. </p><p>Um diese Vereinbarung zu k\u00fcndigen, loggen Sie sich in Ihr PayPal-Konto ein, rufen Sie <strong>Mein Profil</strong> &gt; <strong>Einstellungen</strong> &gt; <strong>Login mit PayPal</strong> auf und entfernen diesen H\u00e4ndler von der Liste.</p><p>Es gelten die <a href=\'%s\'>PayPal-Nutzungsbedingungen</a> f\u00fcr Zahlungen im Einzugsverfahren.</p><p>Damit wir k\u00fcnftig Zahlungen von Ihrem PayPal-Konto abbuchen k\u00f6nnen, f\u00fchrt diese App eventuell eine kleine Testtransaktion durch. Hierbei wird aber kein Geld abgebucht.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->an:Lcom/paypal/android/sdk/fw;

    const-string v2, "Interner Fehler"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->ao:Lcom/paypal/android/sdk/fw;

    const-string v2, "<p>Durch Klicken auf den Button unten stimme ich den <a href=\'%1$s\'>PayPal-Nutzungsbedingungen</a> zu und best\u00e4tige, dass ich bei dieser Transaktion die japanischen Gesetze und Vorschriften einhalte, einschlie\u00dflich Sanktionen hinsichtlich Zahlungen nach Nordkorea oder in den Iran gem\u00e4\u00df dem <a href=\'%2$s\'>Gesetz \u00fcber Devisen und internationalen Handel</a>.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->ap:Lcom/paypal/android/sdk/fw;

    const-string v2, "Einloggen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aq:Lcom/paypal/android/sdk/fw;

    const-string v2, "Login mit PayPal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->ar:Lcom/paypal/android/sdk/fw;

    const-string v2, "Ausloggen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->as:Lcom/paypal/android/sdk/fw;

    const-string v2, "Ausloggen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->at:Lcom/paypal/android/sdk/fw;

    const-string v2, "OK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->au:Lcom/paypal/android/sdk/fw;

    const-string v2, "Passwort"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->av:Lcom/paypal/android/sdk/fw;

    const-string v2, "Bezahlung nach 14 Tagen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aw:Lcom/paypal/android/sdk/fw;

    const-string v2, "Zahlen mit"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->ax:Lcom/paypal/android/sdk/fw;

    const-string v2, "Mit Kreditkarte zahlen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->ay:Lcom/paypal/android/sdk/fw;

    const-string v2, "PayPal-Guthaben"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->az:Lcom/paypal/android/sdk/fw;

    const-string v2, "PayPal Credit"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aA:Lcom/paypal/android/sdk/fw;

    const-string v2, "Handynr."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aB:Lcom/paypal/android/sdk/fw;

    const-string v2, "PIN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aC:Lcom/paypal/android/sdk/fw;

    const-string v2, "Bevorzugte Zahlungsmethode"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aD:Lcom/paypal/android/sdk/fw;

    const-string v2, "PayPal sch\u00fctzt Ihre <a href=\'%s\'>Privatsph\u00e4re</a> und Ihre Finanzinformationen."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aE:Lcom/paypal/android/sdk/fw;

    const-string v2, "In Verarbeitung"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aF:Lcom/paypal/android/sdk/fw;

    const-string v2, "Kreditkarte speichern"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aG:Lcom/paypal/android/sdk/fw;

    const-string v2, "Geld anfordern"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aH:Lcom/paypal/android/sdk/fw;

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevanten Transaktionsdetails werden an den H\u00e4ndler weitergegeben.</p><p>Wenn Sie Ihre Zustimmung widerrufen m\u00f6chten, loggen Sie sich auf PayPal.com ein und klicken Sie unter <strong>Mein Profil</strong> auf \u201cEinstellungen\u201d. Anschlie\u00dfend klicken Sie auf <strong>Login mit PayPal</strong> und entfernen diesen H\u00e4ndler.</p><p>PayPal \u00fcbernimmt keine Verantwortung f\u00fcr die Handlungen oder Fehler des Partners.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aI:Lcom/paypal/android/sdk/fw;

    const-string v2, "Sparkonto"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aJ:Lcom/paypal/android/sdk/fw;

    const-string v2, "Geld senden"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aK:Lcom/paypal/android/sdk/fw;

    const-string v2, "Beim Datenaustausch mit den PayPal-Servern ist ein Problem aufgetreten. Bitte versuchen Sie es erneut."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aL:Lcom/paypal/android/sdk/fw;

    const-string v2, "Loggen Sie sich erneut bei PayPal ein."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aM:Lcom/paypal/android/sdk/fw;

    const-string v2, "Sitzung abgelaufen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aN:Lcom/paypal/android/sdk/fw;

    const-string v2, "Lieferadresse"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aO:Lcom/paypal/android/sdk/fw;

    const-string v2, "Neu bei PayPal? Neu anmelden"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aP:Lcom/paypal/android/sdk/fw;

    const-string v2, "Eingeloggt bleiben"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aQ:Lcom/paypal/android/sdk/fw;

    const-string v2, "Systemfehler (%s). Bitte versuchen Sie es sp\u00e4ter noch einmal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aR:Lcom/paypal/android/sdk/fw;

    const-string v2, "Erneut versuchen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aS:Lcom/paypal/android/sdk/fw;

    const-string v2, "Einloggen nicht m\u00f6glich, da in Ihrem Konto die Zwei-Faktor-Authentifizierung aktiviert ist."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aT:Lcom/paypal/android/sdk/fw;

    const-string v2, "Sicherheitscode"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aU:Lcom/paypal/android/sdk/fw;

    const-string v2, "Wir senden Ihnen eine SMS auf Ihr Handy. Diese enth\u00e4lt einen 6-stelligen Code, der f\u00fcnf Minuten lang g\u00fcltig ist."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aV:Lcom/paypal/android/sdk/fw;

    const-string v2, "SMS senden"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aW:Lcom/paypal/android/sdk/fw;

    const-string v2, "6-stelligen Sicherheitscode eingeben"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aX:Lcom/paypal/android/sdk/fw;

    const-string v2, "Ihre Handynummer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aY:Lcom/paypal/android/sdk/fw;

    const-string v2, "SMS senden"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aZ:Lcom/paypal/android/sdk/fw;

    const-string v2, "SMS erneut senden"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->ba:Lcom/paypal/android/sdk/fw;

    const-string v2, "Einloggen nicht m\u00f6glich, da in Ihrem Konto die Zwei-Faktor-Authentifizierung aktiviert ist. Aktivieren Sie \u00fcber die PayPal-Website Ihren Sicherheitsschl\u00fcssel."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bb:Lcom/paypal/android/sdk/fw;

    const-string v2, "Mit diesem Ger\u00e4t sind keine Zahlungen m\u00f6glich."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bc:Lcom/paypal/android/sdk/fw;

    const-string v2, "Nicht autorisiertes Ger\u00e4t"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bd:Lcom/paypal/android/sdk/fw;

    const-string v2, "Zahlungen an diesen H\u00e4ndler sind nicht m\u00f6glich (ung\u00fcltige Client-ID)."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->be:Lcom/paypal/android/sdk/fw;

    const-string v2, "Ung\u00fcltiger H\u00e4ndler"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bf:Lcom/paypal/android/sdk/fw;

    const-string v2, "Bei der Verarbeitung Ihrer Zahlung ist ein Problem aufgetreten. Bitte versuchen Sie es erneut."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bg:Lcom/paypal/android/sdk/fw;

    const-string v2, "Nicht erkannte Zahlungsquelle"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bh:Lcom/paypal/android/sdk/fw;

    const-string v2, "Fehler"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bi:Lcom/paypal/android/sdk/fw;

    const-string v2, "Ihre Bestellung"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bj:Lcom/paypal/android/sdk/fw;

    const-string v2, "Dieses Ger\u00e4t kann nicht mit PayPal kommunizieren, weil seine Android-Version zu alt ist. Aktualisieren Sie Android oder versuchen Sie es mit einem neueren Ger\u00e4t."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bk:Lcom/paypal/android/sdk/fw;

    const-string v2, "Kreditkarte l\u00f6schen?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bl:Lcom/paypal/android/sdk/fw;

    const-string v2, "Zustimmung fehlgeschlagen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bm:Lcom/paypal/android/sdk/fw;

    const-string v2, "Keine Verbindung"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bn:Lcom/paypal/android/sdk/fw;

    const-string v2, "Login nicht erfolgreich"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bo:Lcom/paypal/android/sdk/fw;

    const-string v2, "Mit Passwort einloggen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bp:Lcom/paypal/android/sdk/fw;

    const-string v2, "Mit PIN einloggen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bq:Lcom/paypal/android/sdk/fw;

    const-string v2, "Einen Moment\u2026"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->br:Lcom/paypal/android/sdk/fw;

    const-string v2, "Zahlung fehlgeschlagen."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bs:Lcom/paypal/android/sdk/fw;

    const-string v2, "Fotografieren"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bt:Lcom/paypal/android/sdk/fw;

    const-string v2, "Sicherheitscode falsch. Bitte versuchen Sie es erneut."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bu:Lcom/paypal/android/sdk/fw;

    const-string v2, "\u00fcber"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bv:Lcom/paypal/android/sdk/fw;

    const-string v2, "Systemfehler. Bitte versuchen Sie es sp\u00e4ter noch einmal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|AT"

    const-string v2, "Sie genehmigen die Weitergabe von Informationen \u00fcber die in Ihrem PayPal-Konto hinterlegten <a href=\'%1$s\'>Zahlungsquellen</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|BE"

    const-string v2, "Sie genehmigen die Weitergabe von Informationen \u00fcber die in Ihrem PayPal-Konto hinterlegten <a href=\'%1$s\'>Zahlungsquellen</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|BG"

    const-string v2, "Sie genehmigen bis auf Widerruf die Weitergabe von Informationen \u00fcber Ihre <a href=\'%1$s\'>Zahlungsquellen</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|CH"

    const-string v2, "Sie genehmigen die Weitergabe von Informationen \u00fcber die in Ihrem PayPal-Konto hinterlegten <a href=\'%1$s\'>Zahlungsquellen</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|CY"

    const-string v2, "Sie genehmigen bis auf Widerruf die Weitergabe von Informationen \u00fcber Ihre <a href=\'%1$s\'>Zahlungsquellen</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|CZ"

    const-string v2, "Sie genehmigen bis auf Widerruf die Weitergabe von Informationen \u00fcber Ihre <a href=\'%1$s\'>Zahlungsquellen</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|DE"

    const-string v2, "Sie genehmigen die Weitergabe von Informationen \u00fcber die in Ihrem PayPal-Konto hinterlegten <a href=\'%1$s\'>Zahlungsquellen</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|DK"

    const-string v2, "Sie genehmigen die Weitergabe von Informationen \u00fcber die in Ihrem PayPal-Konto hinterlegten <a href=\'%1$s\'>Zahlungsmethoden</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|EE"

    const-string v2, "Sie genehmigen bis auf Widerruf die Weitergabe von Informationen \u00fcber Ihre <a href=\'%1$s\'>Zahlungsquellen</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|ES"

    const-string v2, "Sie genehmigen die Weitergabe von Informationen \u00fcber die in Ihrem PayPal-Konto hinterlegten <a href=\'%1$s\'>Zahlungsquellen</a> an den H\u00e4ndler."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|FI"

    const-string v2, "Sie genehmigen bis auf Widerruf die Weitergabe von Informationen \u00fcber Ihre <a href=\'%1$s\'>Zahlungsquellen</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|GB"

    const-string v2, "Sie genehmigen die Weitergabe von Informationen \u00fcber die in Ihrem PayPal-Konto hinterlegten <a href=\'%1$s\'>Zahlungsquellen</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|GR"

    const-string v2, "Sie genehmigen bis auf Widerruf die Weitergabe von Informationen \u00fcber Ihre <a href=\'%1$s\'>Zahlungsquellen</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|HU"

    const-string v2, "Sie genehmigen bis auf Widerruf die Weitergabe von Informationen \u00fcber Ihre <a href=\'%1$s\'>Zahlungsquellen</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|IE"

    const-string v2, "Sie genehmigen bis auf Widerruf die Weitergabe von Informationen \u00fcber Ihre <a href=\'%1$s\'>Zahlungsquellen</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|IT"

    const-string v2, "Sie genehmigen die Weitergabe von Informationen \u00fcber die in Ihrem PayPal-Konto hinterlegten <a href=\'%1$s\'>Zahlungsquellen</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|LI"

    const-string v2, "Sie genehmigen bis auf Widerruf die Weitergabe von Informationen \u00fcber Ihre <a href=\'%1$s\'>Zahlungsquellen</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|LT"

    const-string v2, "Sie genehmigen bis auf Widerruf die Weitergabe von Informationen \u00fcber Ihre <a href=\'%1$s\'>Zahlungsquellen</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|LU"

    const-string v2, "Sie genehmigen bis auf Widerruf die Weitergabe von Informationen \u00fcber Ihre <a href=\'%1$s\'>Zahlungsquellen</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|LV"

    const-string v2, "Sie genehmigen bis auf Widerruf die Weitergabe von Informationen \u00fcber Ihre <a href=\'%1$s\'>Zahlungsquellen</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|MT"

    const-string v2, "Sie genehmigen bis auf Widerruf die Weitergabe von Informationen \u00fcber Ihre <a href=\'%1$s\'>Zahlungsquellen</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|NL"

    const-string v2, "Sie genehmigen die Weitergabe von Informationen \u00fcber die in Ihrem PayPal-Konto hinterlegten <a href=\'%1$s\'>Zahlungsquellen</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|NO"

    const-string v2, "Sie genehmigen die Weitergabe von Informationen \u00fcber die in Ihrem PayPal-Konto hinterlegten <a href=\'%1$s\'>Zahlungsmethoden</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|PL"

    const-string v2, "Sie genehmigen die Weitergabe von Informationen \u00fcber die in Ihrem PayPal-Konto hinterlegten <a href=\'%1$s\'>Zahlungsquellen</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|PT"

    const-string v2, "Sie genehmigen bis auf Widerruf die Weitergabe von Informationen \u00fcber Ihre <a href=\'%1$s\'>Zahlungsquellen</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|SE"

    const-string v2, "Sie genehmigen die Weitergabe von Informationen \u00fcber die in Ihrem PayPal-Konto hinterlegten <a href=\'%1$s\'>Zahlungsmethoden</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|SI"

    const-string v2, "Sie genehmigen bis auf Widerruf die Weitergabe von Informationen \u00fcber Ihre <a href=\'%1$s\'>Zahlungsquellen</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|SK"

    const-string v2, "Sie genehmigen bis auf Widerruf die Weitergabe von Informationen \u00fcber Ihre <a href=\'%1$s\'>Zahlungsquellen</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|SM"

    const-string v2, "Sie genehmigen bis auf Widerruf die Weitergabe von Informationen \u00fcber Ihre <a href=\'%1$s\'>Zahlungsquellen</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|VA"

    const-string v2, "Sie genehmigen bis auf Widerruf die Weitergabe von Informationen \u00fcber Ihre <a href=\'%1$s\'>Zahlungsquellen</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|AU"

    const-string v2, "<p>Sie <a href=\'%1$s\'>autorisieren Abbuchungen f\u00fcr zuk\u00fcnftige PayPal-Zahlungen</a> bei %2$s. Sie weisen PayPal an, die von %3$s geforderten Betr\u00e4ge zu zahlen.</p><p>Weitere Informationen finden Sie im <a href=\'https://www.paypal.com/webapps/mpp/ua/recurringpymts-full\'>PayPal-Vertrag \u00fcber Abonnementzahlungen</a>.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|CN"

    const-string v2, "<p>Sie <a href=\'%1$s\'>autorisieren Abbuchungen f\u00fcr zuk\u00fcnftige PayPal-Zahlungen</a> bei %2$s. Sie weisen PayPal an, die von %3$s geforderten Betr\u00e4ge zu zahlen.</p><p>Weitere Informationen finden Sie im <a href=\'https://cms.paypal.com/c2/cgi-bin/?cmd=_render-content&content_ID=ua/UserAgreement_full\'>PayPal-Vertrag \u00fcber Abonnementzahlungen</a>.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|MY"

    const-string v2, "Sie <a href=\'%1$s\'>autorisieren Abbuchungen</a> f\u00fcr zuk\u00fcnftige PayPal-Zahlungen. Sie stimmen zu und beauftragen PayPal, alle Betr\u00e4ge zu zahlen."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|NZ"

    const-string v2, "Sie <a href=\'%1$s\'>autorisieren Abbuchungen</a> f\u00fcr zuk\u00fcnftige PayPal-Zahlungen. Sie stimmen zu und beauftragen PayPal, alle Betr\u00e4ge zu zahlen."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|SG"

    const-string v2, "Sie <a href=\'%1$s\'>autorisieren Abbuchungen</a> f\u00fcr zuk\u00fcnftige PayPal-Zahlungen. Sie stimmen zu und beauftragen PayPal, alle Betr\u00e4ge zu zahlen."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|US"

    const-string v2, "Sie genehmigen Zahlungen aus Abbuchungsauftr\u00e4gen, die auch dann gesendet werden, wenn Sie nicht bei PayPal eingeloggt sind. <a href=\'%1$s\'>Weitere Bedingungen</a>, einschlie\u00dflich Informationen zu Zahlungsmethoden und Hinweise zur Stornierung von Abbuchungsauftr\u00e4gen."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|AT"

    const-string v2, "Sie gestatten %2$s, bis auf Widerruf in Ihrem Namen <a href=\'%1$s\'>Geld anzufordern</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|BE"

    const-string v2, "Sie gestatten %2$s, bis auf Widerruf in Ihrem Namen <a href=\'%1$s\'>Geld anzufordern</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|CH"

    const-string v2, "Sie gestatten %2$s, bis auf Widerruf in Ihrem Namen <a href=\'%1$s\'>Geld anzufordern</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|DE"

    const-string v2, "Sie gestatten %2$s, bis auf Widerruf in Ihrem Namen <a href=\'%1$s\'>Geld anzufordern</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|GB"

    const-string v2, "Sie gestatten %2$s, bis auf Widerruf in Ihrem Namen <a href=\'%1$s\'>Geld anzufordern</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|NL"

    const-string v2, "Sie gestatten %2$s, bis auf Widerruf in Ihrem Namen <a href=\'%1$s\'>Geld anzufordern</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|PL"

    const-string v2, "Sie gestatten %2$s, bis auf Widerruf in Ihrem Namen <a href=\'%1$s\'>Geld anzufordern</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|AT"

    const-string v2, "Sie gestatten %2$s, bis auf Widerruf in Ihrem Namen <a href=\'%1$s\'>Geld zu senden</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|BE"

    const-string v2, "Sie gestatten %2$s, bis auf Widerruf in Ihrem Namen <a href=\'%1$s\'>Geld zu senden</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|CH"

    const-string v2, "Sie gestatten %2$s, bis auf Widerruf in Ihrem Namen <a href=\'%1$s\'>Geld zu senden</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|DE"

    const-string v2, "Sie gestatten %2$s, bis auf Widerruf in Ihrem Namen <a href=\'%1$s\'>Geld zu senden</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|GB"

    const-string v2, "Sie gestatten %2$s, bis auf Widerruf in Ihrem Namen <a href=\'%1$s\'>Geld zu senden</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|NL"

    const-string v2, "Sie gestatten %2$s, bis auf Widerruf in Ihrem Namen <a href=\'%1$s\'>Geld zu senden</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|PL"

    const-string v2, "Sie gestatten %2$s, bis auf Widerruf in Ihrem Namen <a href=\'%1$s\'>Geld zu senden</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|AT"

    const-string v2, "<h1><strong>Zahlungsmethoden</strong></h1><p>PayPal gibt nur weiter, welche Zahlungsquellen verf\u00fcgbar sind.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|BE"

    const-string v2, "<h1><strong>Zahlungsmethoden</strong></h1><p>PayPal gibt nur weiter, welche Zahlungsquellen in Ihrem PayPal-Konto verf\u00fcgbar sind.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|BG"

    const-string v2, "<h1><strong>Zahlungsmethoden</strong></h1><p>PayPal gibt nur weiter, welche Zahlungsquellen verf\u00fcgbar sind.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|CH"

    const-string v2, "<h1><strong>Zahlungsmethoden</strong></h1><p>PayPal gibt nur weiter, welche Zahlungsquellen verf\u00fcgbar sind.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|CY"

    const-string v2, "<h1><strong>Zahlungsmethoden</strong></h1><p>PayPal gibt nur weiter, welche Zahlungsquellen verf\u00fcgbar sind.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|CZ"

    const-string v2, "<h1><strong>Zahlungsmethoden</strong></h1><p>PayPal gibt nur weiter, welche Zahlungsquellen verf\u00fcgbar sind.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|DE"

    const-string v2, "<h1><strong>Zahlungsmethoden</strong></h1><p>PayPal gibt nur weiter, welche Zahlungsquellen verf\u00fcgbar sind.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|EE"

    const-string v2, "<h1><strong>Zahlungsmethoden</strong></h1><p>PayPal gibt nur weiter, welche Zahlungsquellen verf\u00fcgbar sind.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|ES"

    const-string v2, "<h1><strong>Zahlungsmethoden</strong></h1><p>PayPal gibt nur weiter, welche Zahlungsquellen verf\u00fcgbar sind.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|FI"

    const-string v2, "<h1><strong>Zahlungsmethoden</strong></h1><p>PayPal gibt nur weiter, welche Zahlungsquellen verf\u00fcgbar sind.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|GR"

    const-string v2, "<h1><strong>Zahlungsmethoden</strong></h1><p>PayPal gibt nur weiter, welche Zahlungsquellen verf\u00fcgbar sind.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|HU"

    const-string v2, "<h1><strong>Zahlungsmethoden</strong></h1><p>PayPal gibt nur weiter, welche Zahlungsquellen verf\u00fcgbar sind.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|IE"

    const-string v2, "<h1><strong>Zahlungsmethoden</strong></h1><p>PayPal gibt nur weiter, welche Zahlungsquellen verf\u00fcgbar sind.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|IT"

    const-string v2, "<h1><strong>Zahlungsmethoden</strong></h1><p>PayPal gibt nur weiter, welche Zahlungsquellen verf\u00fcgbar sind.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|LI"

    const-string v2, "<h1><strong>Zahlungsmethoden</strong></h1><p>PayPal gibt nur weiter, welche Zahlungsquellen verf\u00fcgbar sind.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|LT"

    const-string v2, "<h1><strong>Zahlungsmethoden</strong></h1><p>PayPal gibt nur weiter, welche Zahlungsquellen verf\u00fcgbar sind.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|LU"

    const-string v2, "<h1><strong>Zahlungsmethoden</strong></h1><p>PayPal gibt nur weiter, welche Zahlungsquellen verf\u00fcgbar sind.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|LV"

    const-string v2, "<h1><strong>Zahlungsmethoden</strong></h1><p>PayPal gibt nur weiter, welche Zahlungsquellen verf\u00fcgbar sind.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|MT"

    const-string v2, "<h1><strong>Zahlungsmethoden</strong></h1><p>PayPal gibt nur weiter, welche Zahlungsquellen verf\u00fcgbar sind.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|NL"

    const-string v2, "<h1><strong>Zahlungsmethoden</strong></h1><p>PayPal gibt nur weiter, welche Zahlungsquellen in Ihrem PayPal-Konto verf\u00fcgbar sind.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|PL"

    const-string v2, "<h1><strong>Zahlungsmethoden</strong></h1><p>PayPal gibt nur weiter, welche Zahlungsquellen in Ihrem PayPal-Konto verf\u00fcgbar sind.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|PT"

    const-string v2, "<h1><strong>Zahlungsmethoden</strong></h1><p>PayPal gibt nur weiter, welche Zahlungsquellen verf\u00fcgbar sind.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|SI"

    const-string v2, "<h1><strong>Zahlungsmethoden</strong></h1><p>PayPal gibt nur weiter, welche Zahlungsquellen verf\u00fcgbar sind.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|SK"

    const-string v2, "<h1><strong>Zahlungsmethoden</strong></h1><p>PayPal gibt nur weiter, welche Zahlungsquellen verf\u00fcgbar sind.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|SM"

    const-string v2, "<h1><strong>Zahlungsmethoden</strong></h1><p>PayPal gibt nur weiter, welche Zahlungsquellen verf\u00fcgbar sind.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|VA"

    const-string v2, "<h1><strong>Zahlungsmethoden</strong></h1><p>PayPal gibt nur weiter, welche Zahlungsquellen verf\u00fcgbar sind.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|AU"

    const-string v2, "<h1><strong>Abbuchungsvereinbarung</strong></h1><p>Damit wir k\u00fcnftig Zahlungen von Ihrem PayPal-Konto abbuchen k\u00f6nnen, f\u00fchrt diese App eventuell eine kleine Testtransaktion durch. Hierbei wird aber kein Geld abgebucht.</p><p>F\u00fcr Eink\u00e4ufe mit PayPal verwenden wir Ihre Standardzahlungsquelle (PayPal-Guthaben, hinzugef\u00fcgtes Bankkonto, Debit Card oder Kreditkarte, in dieser Reihenfolge). Wenn Ihre Standardzahlungsquelle nicht ausreichend gedeckt ist, kann Ihre Bank oder Ihr Kreditkartenanbieter eine Geb\u00fchr berechnen.</p><p>Wenn Sie diese Vereinbarung k\u00fcndigen m\u00f6chten, klicken Sie in Ihrem PayPal-Konto unter <strong>Mein Profil</strong> auf <strong>Einstellungen</strong> und anschlie\u00dfend neben \u201cLogin mit PayPal\u201d auf <strong>\u00c4ndern</strong>.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|BR"

    const-string v2, "<h1><strong>Abbuchungsvereinbarung</strong></h1><p>Damit wir k\u00fcnftig Zahlungen von Ihrem PayPal-Konto abbuchen k\u00f6nnen, f\u00fchrt diese App eventuell eine kleine Testtransaktion durch. Hierbei wird aber kein Geld abgebucht.</p><p>F\u00fcr Eink\u00e4ufe mit PayPal verwenden wir Ihr PayPal-Guthaben oder Ihre Standard-Kreditkarte oder -Debit Card.</p><p>Um diese Vereinbarung zu k\u00fcndigen, loggen Sie sich in Ihr PayPal-Konto ein, rufen Sie <strong>Mein Profil</strong> &gt; <strong>Einstellungen</strong> &gt; <strong>Login mit PayPal</strong> auf und entfernen diese Website oder App von der Liste.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|CN"

    const-string v2, "<h1><strong>Abbuchungsvereinbarung</strong></h1><p>Damit wir k\u00fcnftig Zahlungen von Ihrem PayPal-Konto abbuchen k\u00f6nnen, f\u00fchrt diese App eventuell eine kleine Testtransaktion durch. Hierbei wird aber kein Geld abgebucht.</p><p>F\u00fcr Eink\u00e4ufe mit PayPal verwenden wir Ihre Standardzahlungsquelle.</p><p>Um diese Vereinbarung zu k\u00fcndigen, loggen Sie sich in Ihr PayPal-Konto ein, rufen Sie <strong>Mein Profil</strong> &gt; <strong>Einstellungen</strong> &gt; <strong>Login mit PayPal</strong> auf und entfernen diese Website oder App von der Liste.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|GB"

    const-string v2, "<h1><strong>Abbuchungsvereinbarung</strong></h1><p>F\u00fcr zuk\u00fcnftige PayPal-Zahlungen bei diesem H\u00e4ndler wird Ihre Standardzahlungsquelle verwendet. </p><p>Um diese Vereinbarung zu k\u00fcndigen, loggen Sie sich in Ihr PayPal-Konto ein, rufen Sie <strong>Mein Profil</strong> &gt; <strong>Einstellungen</strong> &gt; <strong>Login mit PayPal</strong> auf und entfernen Sie diesen H\u00e4ndler von der Liste.</p><p>Es gelten die <a href=\'%s\'>PayPal-Nutzungsbedingungen</a> f\u00fcr Zahlungen im Einzugsverfahren.</p><p>Damit wir k\u00fcnftig Zahlungen von Ihrem PayPal-Konto abbuchen k\u00f6nnen, f\u00fchrt diese App eventuell eine kleine Testtransaktion durch. Hierbei wird aber kein Geld abgebucht.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|HK"

    const-string v2, "<h1><strong>Abbuchungsvereinbarung</strong></h1><p>Damit wir k\u00fcnftig Zahlungen von Ihrem PayPal-Konto abbuchen k\u00f6nnen, f\u00fchrt diese App eventuell eine kleine Testtransaktion durch. Hierbei wird aber kein Geld abgebucht.</p><p>F\u00fcr Eink\u00e4ufe mit PayPal verwenden wir Ihre Standardzahlungsmethode.</p><p>Um diese Autorisierung zu stornieren, klicken Sie in Ihrem PayPal-Konto auf <strong>Mein Profil</strong> &gt; <strong>Einstellungen</strong> &gt; <strong>Login mit PayPal</strong>, und l\u00f6schen Sie diesen H\u00e4ndler aus der Liste.</p><p>Es gelten die <a href=\'%s\'>PayPal-Nutzungsbedingungen</a> f\u00fcr Zahlungen im Einzugsverfahren.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|JP"

    const-string v2, "<h1><strong>Autorisierung f\u00fcr zuk\u00fcnftige Zahlungen</strong></h1><p>Damit wir k\u00fcnftig Zahlungen von Ihrem PayPal-Konto abbuchen k\u00f6nnen, f\u00fchrt diese App eventuell eine kleine Testtransaktion durch. Hierbei wird aber kein Geld abgebucht.</p><p>F\u00fcr Eink\u00e4ufe mit PayPal verwenden wir Ihre Standardzahlungsquelle.</p><p>Um diese Autorisierung zu stornieren, klicken Sie in Ihrem PayPal-Konto auf <strong>Mein Profil</strong> &gt; <strong>Einstellungen</strong> &gt; <strong>Login mit PayPal</strong>, und l\u00f6schen Sie diesen H\u00e4ndler aus der Liste.</p><p>Es gelten die <a href=\'%s\'>PayPal-Nutzungsbedingungen</a> f\u00fcr Zahlungen im Einzugsverfahren.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|MX"

    const-string v2, "<h1><strong>Abbuchungsvereinbarung</strong></h1><p>Damit wir k\u00fcnftig Zahlungen von Ihrem PayPal-Konto abbuchen k\u00f6nnen, f\u00fchrt diese App eventuell eine kleine Testtransaktion durch. Hierbei wird aber kein Geld abgebucht.</p><p>F\u00fcr Eink\u00e4ufe mit PayPal verwenden wir Ihr PayPal-Guthaben oder Ihre Standard-Kreditkarte oder -Debit Card.</p><p>Um diese Vereinbarung zu k\u00fcndigen, loggen Sie sich in Ihr PayPal-Konto ein, rufen Sie <strong>Mein Profil</strong> &gt; <strong>Einstellungen</strong> &gt; <strong>Login mit PayPal</strong> auf und entfernen diese Website oder App von der Liste.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|MY"

    const-string v2, "<h1><strong>Abbuchungsvereinbarung</strong></h1><p>Damit wir k\u00fcnftig Zahlungen von Ihrem PayPal-Konto abbuchen k\u00f6nnen, f\u00fchrt diese App eventuell eine kleine Testtransaktion durch. Hierbei wird aber kein Geld abgebucht.</p><p>F\u00fcr Eink\u00e4ufe mit PayPal verwenden wir Ihre Standardzahlungsmethode.</p><p>Um diese Autorisierung zu stornieren, klicken Sie in Ihrem PayPal-Konto auf <strong>Mein Profil</strong> &gt; <strong>Einstellungen</strong> &gt; <strong>Login mit PayPal</strong>, und l\u00f6schen Sie diesen H\u00e4ndler aus der Liste.</p><p>Es gelten die <a href=\'%s\'>PayPal-Nutzungsbedingungen</a> f\u00fcr Zahlungen im Einzugsverfahren.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|NZ"

    const-string v2, "<h1><strong>Abbuchungsvereinbarung</strong></h1><p>Damit wir k\u00fcnftig Zahlungen von Ihrem PayPal-Konto abbuchen k\u00f6nnen, f\u00fchrt diese App eventuell eine kleine Testtransaktion durch. Hierbei wird aber kein Geld abgebucht.</p><p>F\u00fcr Eink\u00e4ufe mit PayPal verwenden wir Ihre Standardzahlungsmethode.</p><p>Um diese Autorisierung zu stornieren, klicken Sie in Ihrem PayPal-Konto auf <strong>Mein Profil</strong> &gt; <strong>Einstellungen</strong> &gt; <strong>Login mit PayPal</strong>, und l\u00f6schen Sie diesen H\u00e4ndler aus der Liste.</p><p>Es gelten die <a href=\'%s\'>PayPal-Nutzungsbedingungen</a> f\u00fcr Zahlungen im Einzugsverfahren.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|SG"

    const-string v2, "<h1><strong>Abbuchungsvereinbarung</strong></h1><p>Damit wir k\u00fcnftig Zahlungen von Ihrem PayPal-Konto abbuchen k\u00f6nnen, f\u00fchrt diese App eventuell eine kleine Testtransaktion durch. Hierbei wird aber kein Geld abgebucht.</p><p>F\u00fcr Eink\u00e4ufe mit PayPal verwenden wir Ihre Standardzahlungsmethode.</p><p>Um diese Autorisierung zu stornieren, klicken Sie in Ihrem PayPal-Konto auf <strong>Mein Profil</strong> &gt; <strong>Einstellungen</strong> &gt; <strong>Login mit PayPal</strong>, und l\u00f6schen Sie diesen H\u00e4ndler aus der Liste.</p><p>Es gelten die <a href=\'%s\'>PayPal-Nutzungsbedingungen</a> f\u00fcr Zahlungen im Einzugsverfahren.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|US"

    const-string v2, "<h1><strong>Abbuchungsvereinbarung</strong></h1><p>PayPal verwendet zuerst Ihr PayPal-Guthaben, um Eink\u00e4ufe zu bezahlen. Wenn Ihr Guthaben nicht f\u00fcr den gesamten Betrag ausreicht, werden die folgenden Zahlungsquellen in der angegebenen Reihenfolge verwendet: Bankkonto, PayPal Credit, Debit Card, Kreditkarte und/oder Lastschrift mit Sicherheitspr\u00fcfung.</p><p>Um diese Vereinbarung zu k\u00fcndigen, klicken Sie in Ihrem PayPal-Konto auf <strong>Mein Profil</strong> &gt; <strong>Einstellungen</strong> &gt; <strong>Login mit PayPal</strong> und l\u00f6schen Sie diesen H\u00e4ndler aus der Liste.</p><p>Eventuell ist eine Zahlungsautorisierung erforderlich, damit Zahlungen k\u00fcnftig von Ihrem PayPal-Konto abgebucht werden k\u00f6nnen. Die Autorisierung wird storniert und es wird nichts abgebucht.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "LOG_IN_TO_PAYPAL|AU"

    const-string v2, "Login mit PayPal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "LOG_IN_TO_PAYPAL|GB"

    const-string v2, "Login mit PayPal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|AD"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevanten Transaktionsdetails werden an den H\u00e4ndler weitergegeben.</p><p>Wenn Sie Ihre Zustimmung widerrufen m\u00f6chten, loggen Sie sich auf PayPal.com ein und klicken Sie unter <strong>Mein Profil</strong> auf <strong>Sicherheit</strong>. Anschlie\u00dfend klicken Sie auf <strong>Login mit PayPal</strong> und entfernen diesen H\u00e4ndler.</p><p>PayPal \u00fcbernimmt keine Verantwortung f\u00fcr die Handlungen oder Fehler des H\u00e4ndlers.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|AL"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevanten Transaktionsdetails werden an den H\u00e4ndler weitergegeben.</p><p>Wenn Sie Ihre Zustimmung widerrufen m\u00f6chten, loggen Sie sich auf PayPal.com ein und klicken Sie unter <strong>Mein Profil</strong> auf <strong>Sicherheit</strong>. Anschlie\u00dfend klicken Sie auf <strong>Login mit PayPal</strong> und entfernen diesen H\u00e4ndler.</p><p>PayPal \u00fcbernimmt keine Verantwortung f\u00fcr die Handlungen oder Fehler des H\u00e4ndlers.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|AT"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevanten Transaktionsdetails werden an den Partner weitergegeben.</p><p>Wenn Sie Ihre Zustimmung widerrufen m\u00f6chten, loggen Sie sich in Ihr PayPal-Konto ein und klicken Sie auf das Zahnrad. Klicken Sie dann unter <strong>Sicherheit</strong> auf <strong>Login mit PayPal</strong> und l\u00f6schen Sie diesen Partner.</p><p>PayPal \u00fcbernimmt keine Verantwortung f\u00fcr die Handlungen oder Fehler des Partners.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|AU"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevanten Transaktionsdetails werden an den H\u00e4ndler weitergegeben.</p><p>Wenn Sie Ihre Zustimmung widerrufen m\u00f6chten, loggen Sie sich auf PayPal.com ein und klicken Sie unter <strong>Mein Profil</strong> auf \u201cEinstellungen\u201d. Anschlie\u00dfend klicken Sie auf <strong>Login mit PayPal</strong> und entfernen diesen H\u00e4ndler.</p><p>PayPal \u00fcbernimmt keine Verantwortung f\u00fcr die Handlungen oder Fehler des Partners.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|BA"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevanten Transaktionsdetails werden an den H\u00e4ndler weitergegeben.</p><p>Wenn Sie Ihre Zustimmung widerrufen m\u00f6chten, loggen Sie sich auf PayPal.com ein und klicken Sie unter <strong>Mein Profil</strong> auf <strong>Sicherheit</strong>. Anschlie\u00dfend klicken Sie auf <strong>Login mit PayPal</strong> und entfernen diesen H\u00e4ndler.</p><p>PayPal \u00fcbernimmt keine Verantwortung f\u00fcr die Handlungen oder Fehler des H\u00e4ndlers.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|BE"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevanten Transaktionsdetails werden an den H\u00e4ndler weitergegeben.</p><p>Wenn Sie Ihre Zustimmung widerrufen m\u00f6chten, loggen Sie sich in Ihr PayPal-Konto ein und klicken Sie unter <strong>Mein Profil</strong> auf \u201cEinstellungen\u201d. Anschlie\u00dfend klicken Sie auf <strong>Login mit PayPal</strong> und entfernen diesen H\u00e4ndler.</p><p>PayPal \u00fcbernimmt keine Verantwortung f\u00fcr die Handlungen oder Fehler des H\u00e4ndlers.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|BG"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevanten Transaktionsdetails werden an den H\u00e4ndler weitergegeben.</p><p>Wenn Sie Ihre Zustimmung widerrufen m\u00f6chten, loggen Sie sich auf PayPal.com ein und klicken Sie unter <strong>Mein Profil</strong> auf <strong>Sicherheit</strong>. Anschlie\u00dfend klicken Sie auf <strong>Login mit PayPal</strong> und entfernen diesen H\u00e4ndler.</p><p>PayPal \u00fcbernimmt keine Verantwortung f\u00fcr die Handlungen oder Fehler des H\u00e4ndlers.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|CH"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevanten Transaktionsdetails werden an den Partner weitergegeben.</p><p>Wenn Sie Ihre Zustimmung widerrufen m\u00f6chten, loggen Sie sich in Ihr PayPal-Konto ein und klicken Sie auf das Zahnrad. Klicken Sie dann unter <strong>Sicherheit</strong> auf <strong>Login mit PayPal</strong> und l\u00f6schen Sie diesen Partner.</p><p>PayPal \u00fcbernimmt keine Verantwortung f\u00fcr die Handlungen oder Fehler des Partners.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|CY"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevanten Transaktionsdetails werden an den H\u00e4ndler weitergegeben.</p><p>Wenn Sie Ihre Zustimmung widerrufen m\u00f6chten, loggen Sie sich auf PayPal.com ein und klicken Sie unter <strong>Mein Profil</strong> auf <strong>Sicherheit</strong>. Anschlie\u00dfend klicken Sie auf <strong>Login mit PayPal</strong> und entfernen diesen H\u00e4ndler.</p><p>PayPal \u00fcbernimmt keine Verantwortung f\u00fcr die Handlungen oder Fehler des H\u00e4ndlers.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|CZ"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevanten Transaktionsdetails werden an den H\u00e4ndler weitergegeben.</p><p>Wenn Sie Ihre Zustimmung widerrufen m\u00f6chten, loggen Sie sich auf PayPal.com ein und klicken Sie unter <strong>Mein Profil</strong> auf <strong>Sicherheit</strong>. Anschlie\u00dfend klicken Sie auf <strong>Login mit PayPal</strong> und entfernen diesen H\u00e4ndler.</p><p>PayPal \u00fcbernimmt keine Verantwortung f\u00fcr die Handlungen oder Fehler des H\u00e4ndlers.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|DE"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevanten Transaktionsdetails werden an den Partner weitergegeben.</p><p>Wenn Sie Ihre Zustimmung widerrufen m\u00f6chten, loggen Sie sich in Ihr PayPal-Konto ein und klicken Sie auf das Zahnrad. Klicken Sie dann unter <strong>Sicherheit</strong> auf <strong>Login mit PayPal</strong> und l\u00f6schen Sie diesen Partner.</p><p>PayPal \u00fcbernimmt keine Verantwortung f\u00fcr die Handlungen oder Fehler des Partners.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|DK"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevanten Transaktionsdetails werden an den H\u00e4ndler weitergegeben.</p><p>Wenn Sie Ihre Zustimmung widerrufen m\u00f6chten, loggen Sie sich in Ihr PayPal-Konto ein und klicken Sie unter <strong>Mein Profil</strong> auf \u201cEinstellungen\u201d. Anschlie\u00dfend klicken Sie auf <strong>Login mit PayPal</strong> und entfernen diesen H\u00e4ndler.</p><p>PayPal \u00fcbernimmt keine Verantwortung f\u00fcr die Handlungen oder Fehler des H\u00e4ndlers.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|EE"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevanten Transaktionsdetails werden an den H\u00e4ndler weitergegeben.</p><p>Wenn Sie Ihre Zustimmung widerrufen m\u00f6chten, loggen Sie sich auf PayPal.com ein und klicken Sie unter <strong>Mein Profil</strong> auf <strong>Sicherheit</strong>. Anschlie\u00dfend klicken Sie auf <strong>Login mit PayPal</strong> und entfernen diesen H\u00e4ndler.</p><p>PayPal \u00fcbernimmt keine Verantwortung f\u00fcr die Handlungen oder Fehler des H\u00e4ndlers.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|ES"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevanten Transaktionsdetails werden an den H\u00e4ndler weitergegeben.</p><p>Wenn Sie Ihre Zustimmung widerrufen m\u00f6chten, loggen Sie sich in Ihr PayPal-Konto ein, klicken Sie rechts oben auf das Zahnrad und danach auf <strong>Sicherheits-Center</strong>. Anschlie\u00dfend klicken Sie auf <strong>Login mit PayPal</strong> und entfernen diesen H\u00e4ndler. Im klassischen Design klicken Sie unter <strong>Mein Profil</strong> auf <strong>Kontoeinstellungen</strong>. Anschlie\u00dfend klicken Sie auf <strong>Login mit PayPal</strong> und entfernen diesen H\u00e4ndler.</p><p>PayPal \u00fcbernimmt keine Verantwortung f\u00fcr die Handlungen oder Fehler des H\u00e4ndlers.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|FI"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevanten Transaktionsdetails werden an den H\u00e4ndler weitergegeben.</p><p>Wenn Sie Ihre Zustimmung widerrufen m\u00f6chten, loggen Sie sich auf PayPal.com ein und klicken Sie unter <strong>Mein Profil</strong> auf <strong>Sicherheit</strong>. Anschlie\u00dfend klicken Sie auf <strong>Login mit PayPal</strong> und entfernen diesen H\u00e4ndler.</p><p>PayPal \u00fcbernimmt keine Verantwortung f\u00fcr die Handlungen oder Fehler des H\u00e4ndlers.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|GB"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevanten Transaktionsdetails werden an den Partner weitergegeben.</p><p>Wenn Sie Ihre Zustimmung widerrufen m\u00f6chten, loggen Sie sich in Ihr PayPal-Konto ein und klicken Sie unter <strong>Mein Profil</strong> auf \u201cEinstellungen\u201d. Anschlie\u00dfend klicken Sie auf <strong>Login mit PayPal</strong> und entfernen diesen Partner.</p><p>PayPal \u00fcbernimmt keine Verantwortung f\u00fcr die Handlungen oder Fehler des Partners.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|GR"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevanten Transaktionsdetails werden an den H\u00e4ndler weitergegeben.</p><p>Wenn Sie Ihre Zustimmung widerrufen m\u00f6chten, loggen Sie sich auf PayPal.com ein und klicken Sie unter <strong>Mein Profil</strong> auf <strong>Sicherheit</strong>. Anschlie\u00dfend klicken Sie auf <strong>Login mit PayPal</strong> und entfernen diesen H\u00e4ndler.</p><p>PayPal \u00fcbernimmt keine Verantwortung f\u00fcr die Handlungen oder Fehler des H\u00e4ndlers.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|HR"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevanten Transaktionsdetails werden an den H\u00e4ndler weitergegeben.</p><p>Wenn Sie Ihre Zustimmung widerrufen m\u00f6chten, loggen Sie sich auf PayPal.com ein und klicken Sie unter <strong>Mein Profil</strong> auf <strong>Sicherheit</strong>. Anschlie\u00dfend klicken Sie auf <strong>Login mit PayPal</strong> und entfernen diesen H\u00e4ndler.</p><p>PayPal \u00fcbernimmt keine Verantwortung f\u00fcr die Handlungen oder Fehler des H\u00e4ndlers.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|HU"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevanten Transaktionsdetails werden an den H\u00e4ndler weitergegeben.</p><p>Wenn Sie Ihre Zustimmung widerrufen m\u00f6chten, loggen Sie sich auf PayPal.com ein und klicken Sie unter <strong>Mein Profil</strong> auf <strong>Sicherheit</strong>. Anschlie\u00dfend klicken Sie auf <strong>Login mit PayPal</strong> und entfernen diesen H\u00e4ndler.</p><p>PayPal \u00fcbernimmt keine Verantwortung f\u00fcr die Handlungen oder Fehler des H\u00e4ndlers.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|IE"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevanten Transaktionsdetails werden an den H\u00e4ndler weitergegeben.</p><p>Wenn Sie Ihre Zustimmung widerrufen m\u00f6chten, loggen Sie sich auf PayPal.com ein und klicken Sie unter <strong>Mein Profil</strong> auf <strong>Sicherheit</strong>. Anschlie\u00dfend klicken Sie auf <strong>Login mit PayPal</strong> und entfernen diesen H\u00e4ndler.</p><p>PayPal \u00fcbernimmt keine Verantwortung f\u00fcr die Handlungen oder Fehler des H\u00e4ndlers.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|IS"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevanten Transaktionsdetails werden an den H\u00e4ndler weitergegeben.</p><p>Wenn Sie Ihre Zustimmung widerrufen m\u00f6chten, loggen Sie sich auf PayPal.com ein und klicken Sie unter <strong>Mein Profil</strong> auf <strong>Sicherheit</strong>. Anschlie\u00dfend klicken Sie auf <strong>Login mit PayPal</strong> und entfernen diesen H\u00e4ndler.</p><p>PayPal \u00fcbernimmt keine Verantwortung f\u00fcr die Handlungen oder Fehler des H\u00e4ndlers.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|IT"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevanten Transaktionsdetails werden an den H\u00e4ndler weitergegeben.</p><p>Wenn Sie Ihre Zustimmung widerrufen m\u00f6chten, loggen Sie sich auf PayPal.it ein und klicken Sie unter <strong>Mein Profil</strong> auf <strong>Sicherheit</strong>. Anschlie\u00dfend klicken Sie auf <strong>Login mit PayPal</strong> und entfernen diesen H\u00e4ndler.</p><p>PayPal \u00fcbernimmt keine Verantwortung f\u00fcr die Handlungen oder Fehler des H\u00e4ndlers.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|LI"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevanten Transaktionsdetails werden an den H\u00e4ndler weitergegeben.</p><p>Wenn Sie Ihre Zustimmung widerrufen m\u00f6chten, loggen Sie sich auf PayPal.com ein und klicken Sie unter <strong>Mein Profil</strong> auf <strong>Sicherheit</strong>. Anschlie\u00dfend klicken Sie auf <strong>Login mit PayPal</strong> und entfernen diesen H\u00e4ndler.</p><p>PayPal \u00fcbernimmt keine Verantwortung f\u00fcr die Handlungen oder Fehler des H\u00e4ndlers.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|LT"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevanten Transaktionsdetails werden an den H\u00e4ndler weitergegeben.</p><p>Wenn Sie Ihre Zustimmung widerrufen m\u00f6chten, loggen Sie sich auf PayPal.com ein und klicken Sie unter <strong>Mein Profil</strong> auf <strong>Sicherheit</strong>. Anschlie\u00dfend klicken Sie auf <strong>Login mit PayPal</strong> und entfernen diesen H\u00e4ndler.</p><p>PayPal \u00fcbernimmt keine Verantwortung f\u00fcr die Handlungen oder Fehler des H\u00e4ndlers.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|LU"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevanten Transaktionsdetails werden an den H\u00e4ndler weitergegeben.</p><p>Wenn Sie Ihre Zustimmung widerrufen m\u00f6chten, loggen Sie sich auf PayPal.com ein und klicken Sie unter <strong>Mein Profil</strong> auf <strong>Sicherheit</strong>. Anschlie\u00dfend klicken Sie auf <strong>Login mit PayPal</strong> und entfernen diesen H\u00e4ndler.</p><p>PayPal \u00fcbernimmt keine Verantwortung f\u00fcr die Handlungen oder Fehler des H\u00e4ndlers.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|LV"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevanten Transaktionsdetails werden an den H\u00e4ndler weitergegeben.</p><p>Wenn Sie Ihre Zustimmung widerrufen m\u00f6chten, loggen Sie sich auf PayPal.com ein und klicken Sie unter <strong>Mein Profil</strong> auf <strong>Sicherheit</strong>. Anschlie\u00dfend klicken Sie auf <strong>Login mit PayPal</strong> und entfernen diesen H\u00e4ndler.</p><p>PayPal \u00fcbernimmt keine Verantwortung f\u00fcr die Handlungen oder Fehler des H\u00e4ndlers.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|MT"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevanten Transaktionsdetails werden an den H\u00e4ndler weitergegeben.</p><p>Wenn Sie Ihre Zustimmung widerrufen m\u00f6chten, loggen Sie sich auf PayPal.com ein und klicken Sie unter <strong>Mein Profil</strong> auf <strong>Sicherheit</strong>. Anschlie\u00dfend klicken Sie auf <strong>Login mit PayPal</strong> und entfernen diesen H\u00e4ndler.</p><p>PayPal \u00fcbernimmt keine Verantwortung f\u00fcr die Handlungen oder Fehler des H\u00e4ndlers.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|NL"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevanten Transaktionsdetails werden an den H\u00e4ndler weitergegeben.</p><p>Wenn Sie Ihre Zustimmung widerrufen m\u00f6chten, loggen Sie sich in Ihr PayPal-Konto ein und klicken Sie unter <strong>Mein Profil</strong> auf \u201cEinstellungen\u201d. Anschlie\u00dfend klicken Sie auf <strong>Login mit PayPal</strong> und entfernen diesen H\u00e4ndler.</p><p>PayPal \u00fcbernimmt keine Verantwortung f\u00fcr die Handlungen oder Fehler des H\u00e4ndlers.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|NO"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevanten Transaktionsdetails werden an den H\u00e4ndler weitergegeben.</p><p>Wenn Sie Ihre Zustimmung widerrufen m\u00f6chten, loggen Sie sich in Ihr PayPal-Konto ein und klicken Sie unter <strong>Mein Profil</strong> auf \u201cEinstellungen\u201d. Anschlie\u00dfend klicken Sie auf <strong>Login mit PayPal</strong> und entfernen diesen H\u00e4ndler.</p><p>PayPal \u00fcbernimmt keine Verantwortung f\u00fcr die Handlungen oder Fehler des H\u00e4ndlers.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|PL"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevanten Transaktionsdetails werden an den H\u00e4ndler weitergegeben.</p><p>Wenn Sie Ihre Zustimmung widerrufen m\u00f6chten, loggen Sie sich in Ihr PayPal-Konto ein und klicken Sie unter <strong>Mein Profil</strong> auf \u201cEinstellungen\u201d. Anschlie\u00dfend klicken Sie auf <strong>Login mit PayPal</strong> und entfernen diesen H\u00e4ndler.</p><p>PayPal \u00fcbernimmt keine Verantwortung f\u00fcr die Handlungen oder Fehler des H\u00e4ndlers.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|PT"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevanten Transaktionsdetails werden an den H\u00e4ndler weitergegeben.</p><p>Wenn Sie Ihre Zustimmung widerrufen m\u00f6chten, loggen Sie sich auf PayPal.com ein und klicken Sie unter <strong>Mein Profil</strong> auf <strong>Sicherheit</strong>. Anschlie\u00dfend klicken Sie auf <strong>Login mit PayPal</strong> und entfernen diesen H\u00e4ndler.</p><p>PayPal \u00fcbernimmt keine Verantwortung f\u00fcr die Handlungen oder Fehler des H\u00e4ndlers.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|RO"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevanten Transaktionsdetails werden an den H\u00e4ndler weitergegeben.</p><p>Wenn Sie Ihre Zustimmung widerrufen m\u00f6chten, loggen Sie sich auf PayPal.com ein und klicken Sie unter <strong>Mein Profil</strong> auf <strong>Sicherheit</strong>. Anschlie\u00dfend klicken Sie auf <strong>Login mit PayPal</strong> und entfernen diesen H\u00e4ndler.</p><p>PayPal \u00fcbernimmt keine Verantwortung f\u00fcr die Handlungen oder Fehler des H\u00e4ndlers.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|RU"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevanten Transaktionsdetails werden an den Partner weitergegeben.</p><p>Wenn Sie Ihre Zustimmung widerrufen m\u00f6chten, loggen Sie sich auf PayPal.ru ein, klicken Sie rechts oben auf das Zahnrad und danach auf <strong>Sicherheit</strong>. Anschlie\u00dfend klicken Sie auf <strong>Login mit PayPal</strong> und entfernen diesen Partner.</p><p>PayPal \u00fcbernimmt keine Verantwortung f\u00fcr die Handlungen oder Fehler des Partners.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|SE"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevanten Transaktionsdetails werden an den H\u00e4ndler weitergegeben.</p><p>Wenn Sie Ihre Zustimmung widerrufen m\u00f6chten, loggen Sie sich in Ihr PayPal-Konto ein und klicken Sie unter <strong>Mein Profil</strong> auf \u201cEinstellungen\u201d. Anschlie\u00dfend klicken Sie auf <strong>Login mit PayPal</strong> und entfernen diesen H\u00e4ndler.</p><p>PayPal \u00fcbernimmt keine Verantwortung f\u00fcr die Handlungen oder Fehler des H\u00e4ndlers.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|SI"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevanten Transaktionsdetails werden an den H\u00e4ndler weitergegeben.</p><p>Wenn Sie Ihre Zustimmung widerrufen m\u00f6chten, loggen Sie sich auf PayPal.com ein und klicken Sie unter <strong>Mein Profil</strong> auf <strong>Sicherheit</strong>. Anschlie\u00dfend klicken Sie auf <strong>Login mit PayPal</strong> und entfernen diesen H\u00e4ndler.</p><p>PayPal \u00fcbernimmt keine Verantwortung f\u00fcr die Handlungen oder Fehler des H\u00e4ndlers.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|SK"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevanten Transaktionsdetails werden an den H\u00e4ndler weitergegeben.</p><p>Wenn Sie Ihre Zustimmung widerrufen m\u00f6chten, loggen Sie sich auf PayPal.com ein und klicken Sie unter <strong>Mein Profil</strong> auf <strong>Sicherheit</strong>. Anschlie\u00dfend klicken Sie auf <strong>Login mit PayPal</strong> und entfernen diesen H\u00e4ndler.</p><p>PayPal \u00fcbernimmt keine Verantwortung f\u00fcr die Handlungen oder Fehler des H\u00e4ndlers.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|SM"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevanten Transaktionsdetails werden an den H\u00e4ndler weitergegeben.</p><p>Wenn Sie Ihre Zustimmung widerrufen m\u00f6chten, loggen Sie sich auf PayPal.com ein und klicken Sie unter <strong>Mein Profil</strong> auf <strong>Sicherheit</strong>. Anschlie\u00dfend klicken Sie auf <strong>Login mit PayPal</strong> und entfernen diesen H\u00e4ndler.</p><p>PayPal \u00fcbernimmt keine Verantwortung f\u00fcr die Handlungen oder Fehler des H\u00e4ndlers.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|TR"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevanten Transaktionsdetails werden an den H\u00e4ndler weitergegeben.</p><p>Wenn Sie Ihre Zustimmung widerrufen m\u00f6chten, loggen Sie sich auf PayPal.com.tr ein, klicken Sie rechts oben auf das Zahnrad und danach auf <strong>Sicherheit</strong>. Anschlie\u00dfend klicken Sie auf <strong>Login mit PayPal</strong> und entfernen diesen Partner.</p><p>PayPal \u00fcbernimmt keine Verantwortung f\u00fcr die Handlungen oder Fehler des H\u00e4ndlers.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|UA"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevanten Transaktionsdetails werden an den H\u00e4ndler weitergegeben.</p><p>Wenn Sie Ihre Zustimmung widerrufen m\u00f6chten, loggen Sie sich auf PayPal.com ein und klicken Sie unter <strong>Mein Profil</strong> auf <strong>Sicherheit</strong>. Anschlie\u00dfend klicken Sie auf <strong>Login mit PayPal</strong> und entfernen diesen H\u00e4ndler.</p><p>PayPal \u00fcbernimmt keine Verantwortung f\u00fcr die Handlungen oder Fehler des H\u00e4ndlers.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|US"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevanten Transaktionsdetails werden an den H\u00e4ndler weitergegeben.</p><p>Wenn Sie Ihre Zustimmung widerrufen m\u00f6chten, loggen Sie sich auf PayPal.com ein und klicken Sie unter <strong>Mein Profil</strong> auf \u201cEinstellungen\u201d. Anschlie\u00dfend klicken Sie auf <strong>Login mit PayPal</strong> und entfernen diesen H\u00e4ndler.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|VA"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevanten Transaktionsdetails werden an den H\u00e4ndler weitergegeben.</p><p>Wenn Sie Ihre Zustimmung widerrufen m\u00f6chten, loggen Sie sich auf PayPal.com ein und klicken Sie unter <strong>Mein Profil</strong> auf <strong>Sicherheit</strong>. Anschlie\u00dfend klicken Sie auf <strong>Login mit PayPal</strong> und entfernen diesen H\u00e4ndler.</p><p>PayPal \u00fcbernimmt keine Verantwortung f\u00fcr die Handlungen oder Fehler des H\u00e4ndlers.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|ZA"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevanten Transaktionsdetails werden an den H\u00e4ndler weitergegeben.</p><p>Wenn Sie Ihre Zustimmung widerrufen m\u00f6chten, loggen Sie sich auf PayPal.com ein und klicken Sie unter <strong>Mein Profil</strong> auf <strong>Sicherheit</strong>. Anschlie\u00dfend klicken Sie auf <strong>Login mit PayPal</strong> und entfernen diesen H\u00e4ndler.</p><p>PayPal \u00fcbernimmt keine Verantwortung f\u00fcr die Handlungen oder Fehler des H\u00e4ndlers.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "AMOUNT_MISMATCH"

    const-string v2, "Warenkorbsumme stimmt nicht mit Gesamtbetrag \u00fcberein."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_ALREADY_COMPLETED"

    const-string v2, "Diese Autorisierung ist bereits abgeschlossen."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_CANNOT_BE_VOIDED"

    const-string v2, "Autorisierung hat einen Status, der nicht storniert werden kann."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_EXPIRED"

    const-string v2, "Autorisierung ist abgelaufen."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_ID_DOES_NOT_EXIST"

    const-string v2, "Der angeforderte Autorisierungscode existiert nicht."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_VOIDED"

    const-string v2, "Autorisierung wurde storniert."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "CANNOT_REAUTH_CHILD_AUTHORIZATION"

    const-string v2, "Nur die urspr\u00fcngliche Autorisierung kann erneut autorisiert werden. Bereits erneut autorisierte Zahlungen k\u00f6nnen nicht nochmals autorisiert werden."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "CANNOT_REAUTH_INSIDE_HONOR_PERIOD"

    const-string v2, "Erneute Autorisierungen w\u00e4hrend des Anerkennungszeitraums sind nicht m\u00f6glich."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "CAPTURE_AMOUNT_LIMIT_EXCEEDED"

    const-string v2, "Der Betrag \u00fcbersteigt Ihr Limit."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "CARD_TOKEN_PAYER_MISMATCH"

    const-string v2, "Zugriff auf gespeicherte Kreditkartendaten nicht m\u00f6glich."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "CREDIT_CARD_CVV_CHECK_FAILED"

    const-string v2, "Die Kreditkartendaten sind ung\u00fcltig. Bitte korrigieren Sie Ihre Eingabe und versuchen Sie es erneut."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "CREDIT_CARD_REFUSED"

    const-string v2, "Kreditkarte abgelehnt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "CURRENCY_MISMATCH"

    const-string v2, "Die W\u00e4hrung beim Einzug muss mit der W\u00e4hrung der Autorisierung \u00fcbereinstimmen."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "CURRENCY_NOT_ALLOWED"

    const-string v2, "Diese W\u00e4hrung wird von PayPal derzeit nicht unterst\u00fctzt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "DATA_RETRIEVAL"

    const-string v2, "Systemfehler. Bitte versuchen Sie es sp\u00e4ter noch einmal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "DUPLICATE_REQUEST_ID"

    const-string v2, "Systemfehler. Versuchen Sie es sp\u00e4ter noch einmal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "EXPIRED_CREDIT_CARD"

    const-string v2, "Kreditkarte abgelaufen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "EXPIRED_CREDIT_CARD_TOKEN"

    const-string v2, "Diese Kreditkarte ist nicht mehr gespeichert.\nBitte erneut senden."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "FEATURE_UNSUPPORTED_FOR_PAYEE"

    const-string v2, "Funktion wird f\u00fcr diesen Anbieter nicht unterst\u00fctzt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "FULL_REFUND_NOT_ALLOWED_AFTER_PARTIAL_REFUND"

    const-string v2, "F\u00fcr diese Transaktion wurde bereits eine Teilr\u00fcckzahlung geleistet."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "IMMEDIATE_PAY_NOT_SUPPORTED"

    const-string v2, "Sofortzahlung wird f\u00fcr diesen Intent nicht unterst\u00fctzt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "INSTRUMENT_DECLINED"

    const-string v2, "Ihre ausgew\u00e4hlte Zahlungsquelle wurde nicht akzeptiert. W\u00e4hlen Sie eine andere Zahlungsquelle."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "INSUFFICIENT_FUNDS"

    const-string v2, "K\u00e4ufer kann nicht zahlen \u2013 Guthaben nicht ausreichend."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "INTERNAL_SERVICE_ERROR"

    const-string v2, "Systemfehler. Versuchen Sie es sp\u00e4ter noch einmal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "INVALID_ACCOUNT_NUMBER"

    const-string v2, "Diese Kontonummer existiert nicht."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "INVALID_ARGUMENT"

    const-string v2, "Transaktion wegen eines ung\u00fcltigen Arguments abgelehnt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "INVALID_CITY_STATE_ZIP"

    const-string v2, "Ung\u00fcltige Kombination aus Ort/Bundesstaat/PLZ."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "INVALID_FACILITATOR_CONFIGURATION"

    const-string v2, "Diese Transaktion kann aufgrund einer ung\u00fcltigen Facilitator-Konfiguration nicht verarbeitet werden."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "INVALID_PAYER_ID"

    const-string v2, "Systemfehler (ung\u00fcltige Absender-ID). Bitte versuchen Sie es sp\u00e4ter noch einmal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "INVALID_RESOURCE_ID"

    const-string v2, "Systemfehler. Versuchen Sie es sp\u00e4ter noch einmal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "PAYEE_ACCOUNT_INVALID"

    const-string v2, "Die E-Mail-Adresse des Anbieters ist nicht best\u00e4tigt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "PAYEE_ACCOUNT_LOCKED_OR_CLOSED"

    const-string v2, "Dieser Anbieter kann zurzeit keine Zahlungen empfangen."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "PAYEE_ACCOUNT_NO_CONFIRMED_EMAIL"

    const-string v2, "Die E-Mail-Adresse des Anbieters ist nicht best\u00e4tigt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "PAYEE_ACCOUNT_RESTRICTED"

    const-string v2, "Dieser Anbieter kann zurzeit keine Zahlungen empfangen."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "PAYER_ACCOUNT_LOCKED_OR_CLOSED"

    const-string v2, "Ihr Konto ist gesperrt oder geschlossen."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "PAYER_ACCOUNT_RESTRICTED"

    const-string v2, "Der Zugriff auf Ihr Konto ist eingeschr\u00e4nkt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "PAYER_CANNOT_PAY"

    const-string v2, "Sie k\u00f6nnen diese Transaktion nicht mit PayPal bezahlen."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "PAYER_EMPTY_BILLING_ADDRESS"

    const-string v2, "Rechnungsadresse ist f\u00fcr Transaktionen mit Nicht-PayPal-Kreditkarten erforderlich."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "PAYER_ID_MISSING_FOR_CARD_TOKEN"

    const-string v2, "Zugriff auf gespeicherte Kreditkartendaten nicht m\u00f6glich."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_APPROVAL_EXPIRED"

    const-string v2, "Die Zahlungsgenehmigung ist abgelaufen."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_EXPIRED"

    const-string v2, "Die Zahlung ist abgelaufen."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_NOT_APPROVED_FOR_EXECUTION"

    const-string v2, "Der Absender hat die Zahlung nicht genehmigt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_REQUEST_ID_INVALID"

    const-string v2, "PayPal-Anforderungs-ID ist ung\u00fcltig. Versuchen Sie es sp\u00e4ter noch einmal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_STATE_INVALID"

    const-string v2, "Diese Anforderung ist aufgrund des aktuellen Zahlungsstatus ung\u00fcltig."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "PERMISSION_DENIED"

    const-string v2, "Keine Genehmigung f\u00fcr die angeforderte Aktion."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "REFUND_EXCEEDED_TRANSACTION_AMOUNT"

    const-string v2, "Die angeforderte R\u00fcckzahlung \u00fcbersteigt den Betrag der urspr\u00fcnglichen Transaktion."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "REFUND_TIME_LIMIT_EXCEEDED"

    const-string v2, "Diese Transaktion ist zu alt f\u00fcr eine R\u00fcckzahlung."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "REQUIRED_SCOPE_MISSING"

    const-string v2, "Systemfehler. Versuchen Sie es sp\u00e4ter noch einmal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "TOO_MANY_REAUTHORIZATIONS"

    const-string v2, "F\u00fcr diese Autorisierung sind keine weiteren Autorisierungen m\u00f6glich."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_ALREADY_REFUNDED"

    const-string v2, "F\u00fcr diese Transaktion wurde bereits eine R\u00fcckzahlung geleistet."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_LIMIT_EXCEEDED"

    const-string v2, "Der Betrag \u00fcbersteigt Ihr Limit."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_REFUSED"

    const-string v2, "Die Transaktion wurde abgelehnt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_REFUSED_BY_PAYPAL_RISK"

    const-string v2, "Die Transaktion wurde abgelehnt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_REFUSED_PAYEE_PREFERENCE"

    const-string v2, "Einstellung im H\u00e4ndlerprofil: Bestimmte Transaktionen werden automatisch abgelehnt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "UNKNOWN_ERROR"

    const-string v2, "Systemfehler. Versuchen Sie es sp\u00e4ter noch einmal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "UNSUPPORTED_PAYEE_COUNTRY"

    const-string v2, "Ihr Land wird nicht unterst\u00fctzt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "VALIDATION_ERROR"

    const-string v2, "Die Zahlungsdaten sind ung\u00fcltig. Bitte korrigieren und Eingabe wiederholen."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "ORDER_ALREADY_COMPLETED"

    const-string v2, "Bestellung ist bereits storniert, abgelaufen oder abgeschlossen."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "MAXIMUM_ALLOWED_AUTHORIZATION_REACHED_FOR_ORDER"

    const-string v2, "Die maximal zul\u00e4ssige Anzahl an Autorisierungen f\u00fcr die Bestellung wurde erreicht."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "ORDER_VOIDED"

    const-string v2, "Bestellung wurde storniert."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "ORDER_CANNOT_BE_VOIDED"

    const-string v2, "Bestellung kann in diesem Status nicht storniert werden."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "INVALID_EXPERIENCE_PROFILE_ID"

    const-string v2, "Systemfehler. Versuchen Sie es sp\u00e4ter noch einmal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "UNAUTHORIZED_PAYMENT"

    const-string v2, "Der H\u00e4ndler akzeptiert diesen Zahlungstyp nicht."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "DCC_UNSUPPORTED_CURRENCY_CC_TYPE"

    const-string v2, "W\u00e4hrung wird bei Kartentyp nicht unterst\u00fctzt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "DCC_CC_TYPE_NOT_SUPPORTED"

    const-string v2, "Kreditkartentyp wird nicht unterst\u00fctzt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "ADDRESS_ADDITION_ERROR"

    const-string v2, "Fehler beim Hinzuf\u00fcgen der Lieferadresse zum PayPal-Konto."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "DUPLICATE_TRANSACTION"

    const-string v2, "Doppelte Transaktion."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "INVALID_SHIPPING_ADDRESS"

    const-string v2, "Die angegebene Lieferadresse ist nicht g\u00fcltig."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR"

    const-string v2, "Bei der Verarbeitung der Zahlung ist ein Problem aufgetreten. Loggen Sie sich \u00fcber die PayPal-Website ein und \u00fcberpr\u00fcfen Sie Ihr Konto."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_EXPIRED_PAYMENT_CARD"

    const-string v2, "Bei der Verarbeitung der Zahlung ist ein Problem aufgetreten \u2013 Ihre Kreditkarte ist abgelaufen. Loggen Sie sich \u00fcber die PayPal-Website ein und \u00fcberpr\u00fcfen Sie Ihr Konto."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_INSTANT_PAYMENT_REQUIRED"

    const-string v2, "Bei der Verarbeitung der Zahlung ist ein Problem aufgetreten \u2013 Sofortzahlung erforderlich, z.B. mit Kreditkarte. Loggen Sie sich \u00fcber die PayPal-Website ein und \u00fcberpr\u00fcfen Sie Ihr Konto."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_NEED_CONFIRMED_CARD"

    const-string v2, "Bei der Verarbeitung der Zahlung ist ein Problem aufgetreten \u2013 best\u00e4tigte Kreditkarte erforderlich. Loggen Sie sich \u00fcber die PayPal-Website ein und \u00fcberpr\u00fcfen Sie Ihr Konto."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_NEED_PHONE_NUMBER"

    const-string v2, "Bei der Verarbeitung der Zahlung ist ein Problem aufgetreten \u2013 f\u00fcr diese App muss in Ihrem Konto eine Telefonnummer hinterlegt sein. Loggen Sie sich \u00fcber die PayPal-Website ein und \u00fcberpr\u00fcfen Sie Ihr Konto."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_NEED_VALID_FUNDING_INSTRUMENT"

    const-string v2, "Bei der Verarbeitung der Zahlung ist ein Problem aufgetreten \u2013 Sie brauchen ein Konto mit einer g\u00fcltigen Zahlungsquelle (Bankkonto oder Zahlungskarte). Loggen Sie sich \u00fcber die PayPal-Website ein und \u00fcberpr\u00fcfen Sie Ihr Konto."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_NEGATIVE_BALANCE"

    const-string v2, "Bei der Verarbeitung der Zahlung ist ein Problem aufgetreten \u2013 Ihr Konto ist im Minus. Loggen Sie sich \u00fcber die PayPal-Website ein und \u00fcberpr\u00fcfen Sie Ihr Konto."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_SENDING_LIMIT_REACHED"

    const-string v2, "Bei der Verarbeitung der Zahlung ist ein Problem aufgetreten \u2013 Sie haben Ihr Sendelimit erreicht. Loggen Sie sich \u00fcber die PayPal-Website ein und \u00fcberpr\u00fcfen Sie Ihr Konto."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "AUTH_RC_RISK_FAILURE"

    const-string v2, "Aufgrund von Risikomodellen abgelehnt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "AUTH_RC_OFAC_BLOCKED_IP"

    const-string v2, "Nicht autorisierter Client"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "AUTH_RC_IP_COMPLIANCE_FAILURE"

    const-string v2, "Nicht autorisierter Client"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "invalid_user"

    const-string v2, "Benutzername/Passwort nicht korrekt. Bitte versuchen Sie es erneut."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "locked_user"

    const-string v2, "Ihr PayPal-Konto wurde vor\u00fcbergehend gesperrt. Versuchen Sie es sp\u00e4ter noch einmal oder entsperren Sie Ihr Konto \u00fcber www.paypal.com."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "max_attempts_exceeded"

    const-string v2, "Zu viele fehlgeschlagene Logins. Versuchen Sie es sp\u00e4ter noch einmal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "invalid_request"

    const-string v2, "Es ist ein Fehler aufgetreten."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "unauthorized_client"

    const-string v2, "Anforderung nicht autorisiert."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "access_denied"

    const-string v2, "Anforderung nicht autorisiert."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "unsupported_response_type"

    const-string v2, "Es ist ein Fehler aufgetreten."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "invalid_scope"

    const-string v2, "Anforderung nicht autorisiert."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "server_error"

    const-string v2, "Systemfehler. Bitte versuchen Sie es sp\u00e4ter noch einmal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "temporarily_unavailable"

    const-string v2, "Systemfehler. Versuchen Sie es sp\u00e4ter noch einmal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "stepup_required"

    const-string v2, "Wir k\u00f6nnen Sie zurzeit nicht einloggen. Versuchen Sie es sp\u00e4ter noch einmal, oder loggen Sie sich aus Sicherheitsgr\u00fcnden \u00fcber die PayPal-Website ein."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    const-string v1, "account_locked_generate_challenge_limit_exceeded"

    const-string v2, "Zu viele fehlgeschlagene Logins. Versuchen Sie es sp\u00e4ter noch einmal oder wenden Sie sich an PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    const-string v0, "de"

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

    sget-object v1, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    sget-object v1, Lcom/paypal/android/sdk/k;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_2d
    return-object v0

    :cond_2e
    sget-object v0, Lcom/paypal/android/sdk/k;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2d
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/paypal/android/sdk/k;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
