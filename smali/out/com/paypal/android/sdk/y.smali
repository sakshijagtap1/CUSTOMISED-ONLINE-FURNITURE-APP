.class public final Lcom/paypal/android/sdk/y;
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

    sput-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->a:Lcom/paypal/android/sdk/fw;

    const-string v2, "Akkoord en betalen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->b:Lcom/paypal/android/sdk/fw;

    const-string v2, "& overige"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->c:Lcom/paypal/android/sdk/fw;

    const-string v2, "Verificatie"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->d:Lcom/paypal/android/sdk/fw;

    const-string v2, "Achterzijde"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->e:Lcom/paypal/android/sdk/fw;

    const-string v2, "Alternatief"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->f:Lcom/paypal/android/sdk/fw;

    const-string v2, "Annuleren"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->g:Lcom/paypal/android/sdk/fw;

    const-string v2, "American Express"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->h:Lcom/paypal/android/sdk/fw;

    const-string v2, "Carta Aura"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->i:Lcom/paypal/android/sdk/fw;

    const-string v2, "Carte Aurore"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->j:Lcom/paypal/android/sdk/fw;

    const-string v2, "Carta Prepagata PayPal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->k:Lcom/paypal/android/sdk/fw;

    const-string v2, "Carte Bancaire"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->l:Lcom/paypal/android/sdk/fw;

    const-string v2, "Cofinoga"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->m:Lcom/paypal/android/sdk/fw;

    const-string v2, "Delta"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->n:Lcom/paypal/android/sdk/fw;

    const-string v2, "Discover"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->o:Lcom/paypal/android/sdk/fw;

    const-string v2, "Electron"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->p:Lcom/paypal/android/sdk/fw;

    const-string v2, "JCB"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->q:Lcom/paypal/android/sdk/fw;

    const-string v2, "Maestro"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->r:Lcom/paypal/android/sdk/fw;

    const-string v2, "MasterCard"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->s:Lcom/paypal/android/sdk/fw;

    const-string v2, "Postepay"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->t:Lcom/paypal/android/sdk/fw;

    const-string v2, "4 \u00e9toiles"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->u:Lcom/paypal/android/sdk/fw;

    const-string v2, "Tarjeta Aurora"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->v:Lcom/paypal/android/sdk/fw;

    const-string v2, "Visa"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->w:Lcom/paypal/android/sdk/fw;

    const-string v2, "Betaalmethode wijzigen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->x:Lcom/paypal/android/sdk/fw;

    const-string v2, "Betaalrekening"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->y:Lcom/paypal/android/sdk/fw;

    const-string v2, "Dit apparaat wordt gecontroleerd\u2026"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->z:Lcom/paypal/android/sdk/fw;

    const-string v2, "Kaartgegevens wissen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->A:Lcom/paypal/android/sdk/fw;

    const-string v2, "Bevestigen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->B:Lcom/paypal/android/sdk/fw;

    const-string v2, "Weet je zeker dat je je kaartgegevens wilt wissen?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->C:Lcom/paypal/android/sdk/fw;

    const-string v2, "Van kaart afschrijven"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->D:Lcom/paypal/android/sdk/fw;

    const-string v2, "Weet je zeker dat je wilt uitloggen bij PayPal?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->E:Lcom/paypal/android/sdk/fw;

    const-string v2, "Betalen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->F:Lcom/paypal/android/sdk/fw;

    const-string v2, "Akkoord"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->G:Lcom/paypal/android/sdk/fw;

    const-string v2, "Rekening gemaakt op"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->H:Lcom/paypal/android/sdk/fw;

    const-string v2, "Rekeningstatus"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->I:Lcom/paypal/android/sdk/fw;

    const-string v2, "Rekeningtype"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->J:Lcom/paypal/android/sdk/fw;

    const-string v2, "Adres"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->K:Lcom/paypal/android/sdk/fw;

    const-string v2, "Leeftijdsgroep"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->L:Lcom/paypal/android/sdk/fw;

    const-string v2, "Geboortedatum"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->M:Lcom/paypal/android/sdk/fw;

    const-string v2, "E-mailadres"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->N:Lcom/paypal/android/sdk/fw;

    const-string v2, "Volledige naam"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->O:Lcom/paypal/android/sdk/fw;

    const-string v2, "Geslacht"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->P:Lcom/paypal/android/sdk/fw;

    const-string v2, "Taal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->Q:Lcom/paypal/android/sdk/fw;

    const-string v2, "Gebied"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->R:Lcom/paypal/android/sdk/fw;

    const-string v2, "Telefoon"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->S:Lcom/paypal/android/sdk/fw;

    const-string v2, "Tijdzone"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->T:Lcom/paypal/android/sdk/fw;

    const-string v2, "Deel het volgende: %s."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->U:Lcom/paypal/android/sdk/fw;

    const-string v2, "Betaal supersnel."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->V:Lcom/paypal/android/sdk/fw;

    const-string v2, "%s vraagt je om:"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->W:Lcom/paypal/android/sdk/fw;

    const-string v2, "Deel de aan je PayPal-rekening gekoppelde <a href=\'%1$s\'>betaalmethoden</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->X:Lcom/paypal/android/sdk/fw;

    const-string v2, "Betaalopties weergeven zodat je er een kunt kiezen."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->Y:Lcom/paypal/android/sdk/fw;

    const-string v2, "<a href=\'%1$s\'>Geef toestemming</a> voor toekomstige aankopen bij %2$s die je met PayPal betaalt. Je geeft PayPal opdracht alle door %3$s verzochte bedragen te betalen."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->Z:Lcom/paypal/android/sdk/fw;

    const-string v2, "toestemming te verlenen onze klantenkaart aan je PayPal Wallet toe te voegen en deze te beheren."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aa:Lcom/paypal/android/sdk/fw;

    const-string v2, "Ga akkoord met het <a href=\'%2$s\'>Privacybeleid</a> en de <a href=\'%3$s\'>Gebruikersovereenkomst</a> van %1$s."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->ab:Lcom/paypal/android/sdk/fw;

    const-string v2, "Sta toe om namens jou een <a href=\'%1$s\'>betaalverzoek</a> te doen totdat je de toestemming intrekt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->ac:Lcom/paypal/android/sdk/fw;

    const-string v2, "Sta toe om namens jou <a href=\'%1$s\'>geld over te maken</a> totdat je de toestemming intrekt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->ad:Lcom/paypal/android/sdk/fw;

    const-string v2, "Toestemming"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->ae:Lcom/paypal/android/sdk/fw;

    const-string v2, "E-mail"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->af:Lcom/paypal/android/sdk/fw;

    const-string v2, "Proefgegevens"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->ag:Lcom/paypal/android/sdk/fw;

    const-string v2, "Sandbox"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->ah:Lcom/paypal/android/sdk/fw;

    const-string v2, "Vervaldatum"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->ai:Lcom/paypal/android/sdk/fw;

    const-string v2, "<h1><strong>betaalmethoden</strong></h1><p>PayPal deelt alleen de betaalmethoden die beschikbaar zijn voor gebruik.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aj:Lcom/paypal/android/sdk/fw;

    const-string v2, "Wachtwoord vergeten?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->ak:Lcom/paypal/android/sdk/fw;

    const-string v2, "Van"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->al:Lcom/paypal/android/sdk/fw;

    const-string v2, "Welke betaalmethode wil je gebruiken voor toekomstige betalingen aan %1$s?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->am:Lcom/paypal/android/sdk/fw;

    const-string v2, "<h1><strong>Overeenkomst toekomstige betalingen</strong></h1><p>Je standaardbetaalbron wordt gebruikt voor toekomstige PayPal-betalingen van deze webwinkel.</p><p>Je kunt deze overeenkomst annuleren door in te loggen op je PayPal-rekening. Ga vervolgens naar <strong>Profiel</strong> &gt; <strong>Rekeninginstellingen</strong> &gt; <strong>Inloggen met PayPal</strong> en verwijder deze webwinkel uit de lijst.</p><p>Het gedeelte Terugkerende betaling van de <a href=\'%s\'>PayPal Gebruikersovereenkomst</a> is van toepassing.</p><p>Deze app kan een kleine testtransactie simuleren om te controleren of er betalingen kunnen worden afgeschreven van je PayPal-rekening. Er wordt niet daadwerkelijk geld afgeschreven.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->an:Lcom/paypal/android/sdk/fw;

    const-string v2, "Interne fout"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->ao:Lcom/paypal/android/sdk/fw;

    const-string v2, "<p>Door op de knop hieronder te klikken, ga ik akkoord met de voorwaarden van de <a href=\'%1$s\'>PayPal Gebruikersovereenkomst</a>\u00b7en verklaar ik dat ik voldoe aan de Japanse wetten en voorschriften, inclusief met betrekking tot sancties op betalingen aan Noord-Korea en Iran overeenkomstig de <a href=\'%2$s\'>Foreign Exchange and Foreign Trade Act</a>, bij het voltooien van de transactie.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->ap:Lcom/paypal/android/sdk/fw;

    const-string v2, "Inloggen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aq:Lcom/paypal/android/sdk/fw;

    const-string v2, "Inloggen met PayPal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->ar:Lcom/paypal/android/sdk/fw;

    const-string v2, "Uitloggen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->as:Lcom/paypal/android/sdk/fw;

    const-string v2, "Uitloggen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->at:Lcom/paypal/android/sdk/fw;

    const-string v2, "OK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->au:Lcom/paypal/android/sdk/fw;

    const-string v2, "Wachtwoord"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->av:Lcom/paypal/android/sdk/fw;

    const-string v2, "PayPal Achteraf Betalen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aw:Lcom/paypal/android/sdk/fw;

    const-string v2, "Betalen met"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->ax:Lcom/paypal/android/sdk/fw;

    const-string v2, "Betalen met creditcard"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->ay:Lcom/paypal/android/sdk/fw;

    const-string v2, "PayPal-saldo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->az:Lcom/paypal/android/sdk/fw;

    const-string v2, "PayPal Credit"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aA:Lcom/paypal/android/sdk/fw;

    const-string v2, "Telefoon"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aB:Lcom/paypal/android/sdk/fw;

    const-string v2, "Pincode"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aC:Lcom/paypal/android/sdk/fw;

    const-string v2, "Voorkeursbetaalmethode"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aD:Lcom/paypal/android/sdk/fw;

    const-string v2, "PayPal beschermt je <a href=\'%s\'>privacy</a> en financi\u00eble gegevens."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aE:Lcom/paypal/android/sdk/fw;

    const-string v2, "Bezig met verwerking"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aF:Lcom/paypal/android/sdk/fw;

    const-string v2, "Kaart onthouden"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aG:Lcom/paypal/android/sdk/fw;

    const-string v2, "Betaalverzoek"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aH:Lcom/paypal/android/sdk/fw;

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevante transactiegegevens worden met de webwinkel gedeeld.</p><p>Je kunt de toestemming intrekken door op je PayPal-rekening in te loggen en naar de optie <strong>Inloggen met PayPal</strong> onder <strong>Profiel</strong>-instellingen te gaan en deze webwinkel te verwijderen.</p><p>PayPal is niet verantwoordelijk voor handelingen of fouten van de partner.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aI:Lcom/paypal/android/sdk/fw;

    const-string v2, "Spaarrekening"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aJ:Lcom/paypal/android/sdk/fw;

    const-string v2, "Geld overmaken"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aK:Lcom/paypal/android/sdk/fw;

    const-string v2, "Er is een probleem opgetreden bij de communicatie met de PayPal-servers. Probeer het opnieuw."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aL:Lcom/paypal/android/sdk/fw;

    const-string v2, "Log opnieuw in bij PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aM:Lcom/paypal/android/sdk/fw;

    const-string v2, "Sessie verlopen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aN:Lcom/paypal/android/sdk/fw;

    const-string v2, "Verzendadres"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aO:Lcom/paypal/android/sdk/fw;

    const-string v2, "Nieuw bij PayPal? Rekening openen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aP:Lcom/paypal/android/sdk/fw;

    const-string v2, "Ingelogd blijven"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aQ:Lcom/paypal/android/sdk/fw;

    const-string v2, "Systeemfout (%s). Probeer het later opnieuw."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aR:Lcom/paypal/android/sdk/fw;

    const-string v2, "Probeer het opnieuw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aS:Lcom/paypal/android/sdk/fw;

    const-string v2, "Inloggen is niet mogelijk, omdat voor je rekening twee-factor verificatie is ingeschakeld"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aT:Lcom/paypal/android/sdk/fw;

    const-string v2, "Beveiligingscode"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aU:Lcom/paypal/android/sdk/fw;

    const-string v2, "Stuur een sms naar je telefoon. De zescijferige code die je ontvangt is 5 minuten geldig."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aV:Lcom/paypal/android/sdk/fw;

    const-string v2, "Sms wordt gestuurd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aW:Lcom/paypal/android/sdk/fw;

    const-string v2, "Voer de zescijferige beveiligingscode in"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aX:Lcom/paypal/android/sdk/fw;

    const-string v2, "Je mobiele nummer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aY:Lcom/paypal/android/sdk/fw;

    const-string v2, "Sms sturen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aZ:Lcom/paypal/android/sdk/fw;

    const-string v2, "Sms opnieuw sturen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->ba:Lcom/paypal/android/sdk/fw;

    const-string v2, "Inloggen is niet mogelijk, omdat voor je rekening twee-factor verificatie is ingeschakeld Ga naar de PayPal-website om je beveiligingssleutel te activeren."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bb:Lcom/paypal/android/sdk/fw;

    const-string v2, "Betalingen vanaf dit apparaat zijn niet toegestaan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bc:Lcom/paypal/android/sdk/fw;

    const-string v2, "Ongeautoriseerd apparaat"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bd:Lcom/paypal/android/sdk/fw;

    const-string v2, "Betalingen aan deze webwinkel zijn niet toegestaan (ongeldig client-id)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->be:Lcom/paypal/android/sdk/fw;

    const-string v2, "Ongeldige webwinkel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bf:Lcom/paypal/android/sdk/fw;

    const-string v2, "Er is een probleem opgetreden bij de verwerking van je betaling. Probeer het opnieuw."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bg:Lcom/paypal/android/sdk/fw;

    const-string v2, "Niet-herkende bron"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bh:Lcom/paypal/android/sdk/fw;

    const-string v2, "Onze excuses"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bi:Lcom/paypal/android/sdk/fw;

    const-string v2, "Je bestelling"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bj:Lcom/paypal/android/sdk/fw;

    const-string v2, "Dit apparaat kan niet met PayPal communiceren omdat deze versie van Android te oud is. Voer een upgrade van Android uit of probeer het met een nieuwer apparaat."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bk:Lcom/paypal/android/sdk/fw;

    const-string v2, "Kaart verwijderen?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bl:Lcom/paypal/android/sdk/fw;

    const-string v2, "Toestemming mislukt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bm:Lcom/paypal/android/sdk/fw;

    const-string v2, "Verbinding mislukt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bn:Lcom/paypal/android/sdk/fw;

    const-string v2, "Inloggen mislukt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bo:Lcom/paypal/android/sdk/fw;

    const-string v2, "Inloggen met wachtwoord"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bp:Lcom/paypal/android/sdk/fw;

    const-string v2, "Inloggen met pincode"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bq:Lcom/paypal/android/sdk/fw;

    const-string v2, "Even geduld\u2026"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->br:Lcom/paypal/android/sdk/fw;

    const-string v2, "Betaling mislukt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bs:Lcom/paypal/android/sdk/fw;

    const-string v2, "Scannen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bt:Lcom/paypal/android/sdk/fw;

    const-string v2, "Onjuiste beveiligingscode. Probeer het opnieuw."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bu:Lcom/paypal/android/sdk/fw;

    const-string v2, "Via"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bv:Lcom/paypal/android/sdk/fw;

    const-string v2, "Systeemfout. Probeer het later opnieuw."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|AT"

    const-string v2, "Deel gegevens van de aan je PayPal-rekening gekoppelde <a href=\'%1$s\'>betaalbronnen</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|BE"

    const-string v2, "Deel gegevens van de aan je PayPal-rekening gekoppelde <a href=\'%1$s\'>betaalbronnen</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|BG"

    const-string v2, "Namens jou de <a href=\'%1$s\'>betaalbronnen</a> delen totdat je de toestemming intrekt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|CH"

    const-string v2, "Deel gegevens van de aan je PayPal-rekening gekoppelde <a href=\'%1$s\'>betaalbronnen</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|CY"

    const-string v2, "Namens jou de <a href=\'%1$s\'>betaalbronnen</a> delen totdat je de toestemming intrekt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|CZ"

    const-string v2, "Namens jou de <a href=\'%1$s\'>betaalbronnen</a> delen totdat je de toestemming intrekt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|DE"

    const-string v2, "Deel gegevens van de aan je PayPal-rekening gekoppelde <a href=\'%1$s\'>betaalbronnen</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|DK"

    const-string v2, "Deel gegevens van de aan je PayPal-rekening gekoppelde <a href=\'%1$s\'>betaalmethoden</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|EE"

    const-string v2, "Namens jou de <a href=\'%1$s\'>betaalbronnen</a> delen totdat je de toestemming intrekt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|ES"

    const-string v2, "Deel gegevens over de aan je PayPal-rekening gekoppelde <a href=\'%1$s\'>betaalbronnen</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|FI"

    const-string v2, "Namens jou de <a href=\'%1$s\'>betaalbronnen</a> delen totdat je de toestemming intrekt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|GB"

    const-string v2, "Deel de aan je PayPal-rekening gekoppelde <a href=\'%1$s\'>betaalbronnen</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|GR"

    const-string v2, "Namens jou de <a href=\'%1$s\'>betaalbronnen</a> delen totdat je de toestemming intrekt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|HU"

    const-string v2, "Namens jou de <a href=\'%1$s\'>betaalbronnen</a> delen totdat je de toestemming intrekt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|IE"

    const-string v2, "Namens jou de <a href=\'%1$s\'>betaalbronnen</a> delen totdat je de toestemming intrekt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|IT"

    const-string v2, "Deel de aan je PayPal-rekening gekoppelde <a href=\'%1$s\'>betaalbronnen</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|LI"

    const-string v2, "Namens jou de <a href=\'%1$s\'>betaalbronnen</a> delen totdat je de toestemming intrekt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|LT"

    const-string v2, "Namens jou de <a href=\'%1$s\'>betaalbronnen</a> delen totdat je de toestemming intrekt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|LU"

    const-string v2, "Namens jou de <a href=\'%1$s\'>betaalbronnen</a> delen totdat je de toestemming intrekt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|LV"

    const-string v2, "Namens jou de <a href=\'%1$s\'>betaalbronnen</a> delen totdat je de toestemming intrekt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|MT"

    const-string v2, "Namens jou de <a href=\'%1$s\'>betaalbronnen</a> delen totdat je de toestemming intrekt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|NL"

    const-string v2, "Deel gegevens van de aan je PayPal-rekening gekoppelde <a href=\'%1$s\'>betaalbronnen</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|NO"

    const-string v2, "Deel gegevens van de aan je PayPal-rekening gekoppelde <a href=\'%1$s\'>betaalmethoden</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|PL"

    const-string v2, "Deel gegevens van de aan je PayPal-rekening gekoppelde <a href=\'%1$s\'>betaalbronnen</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|PT"

    const-string v2, "Namens jou de <a href=\'%1$s\'>betaalbronnen</a> delen totdat je de toestemming intrekt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|SE"

    const-string v2, "Deel gegevens van de aan je PayPal-rekening gekoppelde <a href=\'%1$s\'>betaalmethoden</a>."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|SI"

    const-string v2, "Namens jou de <a href=\'%1$s\'>betaalbronnen</a> delen totdat je de toestemming intrekt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|SK"

    const-string v2, "Namens jou de <a href=\'%1$s\'>betaalbronnen</a> delen totdat je de toestemming intrekt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|SM"

    const-string v2, "Namens jou de <a href=\'%1$s\'>betaalbronnen</a> delen totdat je de toestemming intrekt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|VA"

    const-string v2, "Namens jou de <a href=\'%1$s\'>betaalbronnen</a> delen totdat je de toestemming intrekt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|AU"

    const-string v2, "<p><a href=\'%1$s\'>Geef toestemming</a> voor toekomstige aankopen bij %2$s die je met PayPal betaalt. Je geeft PayPal opdracht alle door %3$s verzochte bedragen te betalen.</p><p>Zie de <a href=\'https://www.paypal.com/webapps/mpp/ua/recurringpymts-full\'>PayPal-overeenkomst voor terugkerende betalingen en facturen</a> voor meer informatie.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|CN"

    const-string v2, "<p><a href=\'%1$s\'>Geef toestemming</a> voor toekomstige aankopen bij %2$s die je met PayPal betaalt. Je geeft PayPal opdracht alle door %3$s verzochte bedragen te betalen.</p><p>Zie de <a href=\'https://cms.paypal.com/c2/cgi-bin/?cmd=_render-content&content_ID=ua/UserAgreement_full\'>PayPal-overeenkomst voor terugkerende betalingen en facturen</a> voor meer informatie.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|MY"

    const-string v2, "<a href=\'%1$s\'>Geef toestemming</a> voor toekomstige aankopen die je met PayPal betaalt. Je geeft PayPal toestemming en opdracht alle bedragen te betalen."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|NZ"

    const-string v2, "<a href=\'%1$s\'>Geef toestemming</a> voor toekomstige aankopen die je met PayPal betaalt. Je geeft PayPal toestemming en opdracht alle bedragen te betalen."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|SG"

    const-string v2, "<a href=\'%1$s\'>Geef toestemming</a> voor toekomstige aankopen die je met PayPal betaalt. Je geeft PayPal toestemming en opdracht alle bedragen te betalen."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|US"

    const-string v2, "Geef vooraf toestemming voor toekomstige betalingen met je PayPal-rekening zodat je niet steeds hoeft in te loggen. <a href=\'%1$s\'>Zie de aanvullende voorwaarden</a> over onder andere de betaalmethoden en hoe je toekomstige betalingen kunt annuleren."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|AT"

    const-string v2, "Sta %2$s toe om namens jou een <a href=\'%1$s\'>betaalverzoek</a> te doen totdat je de toestemming intrekt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|BE"

    const-string v2, "Sta %2$s toe om namens jou een <a href=\'%1$s\'>betaalverzoek</a> te doen totdat je de toestemming intrekt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|CH"

    const-string v2, "Sta %2$s toe om namens jou een <a href=\'%1$s\'>betaalverzoek</a> te doen totdat je de toestemming intrekt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|DE"

    const-string v2, "Sta %2$s toe om namens jou een <a href=\'%1$s\'>betaalverzoek</a> te doen totdat je de toestemming intrekt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|GB"

    const-string v2, "Sta %2$s toe om namens jou een <a href=\'%1$s\'>betaalverzoek</a> te doen totdat je de toestemming intrekt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|NL"

    const-string v2, "Sta %2$s toe om namens jou een <a href=\'%1$s\'>betaalverzoek</a> te doen totdat je de toestemming intrekt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|PL"

    const-string v2, "Sta %2$s toe om namens jou een <a href=\'%1$s\'>betaalverzoek</a> te doen totdat je de toestemming intrekt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|AT"

    const-string v2, "Sta %2$s toe om namens jou <a href=\'%1$s\'>geld over te maken</a> totdat je de toestemming intrekt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|BE"

    const-string v2, "Sta %2$s toe om namens jou <a href=\'%1$s\'>geld over te maken</a> totdat je de toestemming intrekt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|CH"

    const-string v2, "Sta %2$s toe om namens jou <a href=\'%1$s\'>geld over te maken</a> totdat je de toestemming intrekt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|DE"

    const-string v2, "Sta %2$s toe om namens jou <a href=\'%1$s\'>geld over te maken</a> totdat je de toestemming intrekt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|GB"

    const-string v2, "Sta %2$s toe om namens jou <a href=\'%1$s\'>geld over te maken</a> totdat je de toestemming intrekt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|NL"

    const-string v2, "Sta %2$s toe om namens jou <a href=\'%1$s\'>geld over te maken</a> totdat je de toestemming intrekt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|PL"

    const-string v2, "Sta %2$s toe om namens jou <a href=\'%1$s\'>geld over te maken</a> totdat je de toestemming intrekt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|AT"

    const-string v2, "<h1><strong>betaalmethoden</strong></h1><p>PayPal deelt alleen je betaalbronnen die beschikbaar zijn voor gebruik.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|BE"

    const-string v2, "<h1><strong>betaalmethoden</strong></h1><p>PayPal deelt alleen de gegevens over de betaalbronnen die beschikbaar zijn voor gebruik.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|BG"

    const-string v2, "<h1><strong>betaalmethoden</strong></h1><p>PayPal deelt alleen je betaalbronnen die beschikbaar zijn voor gebruik.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|CH"

    const-string v2, "<h1><strong>betaalmethoden</strong></h1><p>PayPal deelt alleen je betaalbronnen die beschikbaar zijn voor gebruik.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|CY"

    const-string v2, "<h1><strong>betaalmethoden</strong></h1><p>PayPal deelt alleen je betaalbronnen die beschikbaar zijn voor gebruik.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|CZ"

    const-string v2, "<h1><strong>betaalmethoden</strong></h1><p>PayPal deelt alleen je betaalbronnen die beschikbaar zijn voor gebruik.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|DE"

    const-string v2, "<h1><strong>betaalmethoden</strong></h1><p>PayPal deelt alleen je betaalbronnen die beschikbaar zijn voor gebruik.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|EE"

    const-string v2, "<h1><strong>betaalmethoden</strong></h1><p>PayPal deelt alleen je betaalbronnen die beschikbaar zijn voor gebruik.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|ES"

    const-string v2, "<h1><strong>betaalmethoden</strong></h1><p>PayPal deelt alleen je betaalbronnen die beschikbaar zijn voor gebruik.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|FI"

    const-string v2, "<h1><strong>betaalmethoden</strong></h1><p>PayPal deelt alleen je betaalbronnen die beschikbaar zijn voor gebruik.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|GR"

    const-string v2, "<h1><strong>betaalmethoden</strong></h1><p>PayPal deelt alleen je betaalbronnen die beschikbaar zijn voor gebruik.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|HU"

    const-string v2, "<h1><strong>betaalmethoden</strong></h1><p>PayPal deelt alleen je betaalbronnen die beschikbaar zijn voor gebruik.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|IE"

    const-string v2, "<h1><strong>betaalmethoden</strong></h1><p>PayPal deelt alleen je betaalbronnen die beschikbaar zijn voor gebruik.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|IT"

    const-string v2, "<h1><strong>betaalmethoden</strong></h1><p>PayPal deelt alleen je betaalbronnen die beschikbaar zijn voor gebruik.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|LI"

    const-string v2, "<h1><strong>betaalmethoden</strong></h1><p>PayPal deelt alleen je betaalbronnen die beschikbaar zijn voor gebruik.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|LT"

    const-string v2, "<h1><strong>betaalmethoden</strong></h1><p>PayPal deelt alleen je betaalbronnen die beschikbaar zijn voor gebruik.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|LU"

    const-string v2, "<h1><strong>betaalmethoden</strong></h1><p>PayPal deelt alleen je betaalbronnen die beschikbaar zijn voor gebruik.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|LV"

    const-string v2, "<h1><strong>betaalmethoden</strong></h1><p>PayPal deelt alleen je betaalbronnen die beschikbaar zijn voor gebruik.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|MT"

    const-string v2, "<h1><strong>betaalmethoden</strong></h1><p>PayPal deelt alleen je betaalbronnen die beschikbaar zijn voor gebruik.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|NL"

    const-string v2, "<h1><strong>betaalmethoden</strong></h1><p>PayPal deelt alleen de gegevens over de betaalbronnen die beschikbaar zijn voor gebruik.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|PL"

    const-string v2, "<h1><strong>betaalmethoden</strong></h1><p>PayPal deelt alleen de gegevens over de betaalbronnen die beschikbaar zijn voor gebruik.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|PT"

    const-string v2, "<h1><strong>betaalmethoden</strong></h1><p>PayPal deelt alleen je betaalbronnen die beschikbaar zijn voor gebruik.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|SI"

    const-string v2, "<h1><strong>betaalmethoden</strong></h1><p>PayPal deelt alleen je betaalbronnen die beschikbaar zijn voor gebruik.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|SK"

    const-string v2, "<h1><strong>betaalmethoden</strong></h1><p>PayPal deelt alleen je betaalbronnen die beschikbaar zijn voor gebruik.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|SM"

    const-string v2, "<h1><strong>betaalmethoden</strong></h1><p>PayPal deelt alleen je betaalbronnen die beschikbaar zijn voor gebruik.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|VA"

    const-string v2, "<h1><strong>betaalmethoden</strong></h1><p>PayPal deelt alleen je betaalbronnen die beschikbaar zijn voor gebruik.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|AU"

    const-string v2, "<h1><strong>Overeenkomst toekomstige betalingen</strong></h1><p>Deze app kan een kleine testtransactie simuleren ter controle dat er in de toekomst bedragen kunnen worden afgeschreven van je PayPal-rekening. Er wordt niet daadwerkelijk geld afgeschreven.</p><p>Je standaardbetaalmethode (PayPal-saldo, gekoppelde bankrekening of creditcard, in die volgorde) wordt gebruikt om voor aankopen met PayPal te betalen. Als het saldo van je standaardbetaalmethode ontoereikend is voor de aankoop, kan je bank of creditcardmaatschappij kosten in rekening brengen.</p><p>Je kunt deze overeenkomst annuleren door in te loggen op je PayPal-rekening, naar <strong>Profiel</strong> te gaan, op <strong>Rekeninginstellingen</strong> te klikken en op <strong>Wijzigen</strong> naast \u2018Inloggen met PayPal\u2019 te klikken.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|BR"

    const-string v2, "<h1><strong>Overeenkomst toekomstige betalingen</strong></h1><p>Deze app kan een kleine testtransactie simuleren om te controleren of er in de toekomst bedragen kunnen worden afgeschreven van je PayPal-rekening. Er wordt niet daadwerkelijk geld afgeschreven.</p><p>We gebruiken je PayPal-saldo of primaire creditcard om voor aankopen met PayPal te betalen.</p><p>Je kunt deze overeenkomst annuleren door in te loggen op je PayPal-rekening, naar <strong>Profiel</strong> &gt; <strong>Rekeninginstellingen</strong> &gt; <strong>Inloggen met PayPal</strong> te gaan en deze webwinkel uit de lijst te halen.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|CN"

    const-string v2, "<h1><strong>Overeenkomst toekomstige betalingen</strong></h1><p>Deze app kan een kleine testtransactie simuleren ter controle dat er in de toekomst bedragen kunnen worden afgeschreven van je PayPal-rekening. Er wordt niet daadwerkelijk geld afgeschreven.</p><p>Je standaardbetaalmethode wordt gebruikt om aankopen met PayPal te betalen.</p><p>Je kunt deze overeenkomst annuleren door in te loggen op je PayPal-rekening, naar <strong>Profiel</strong> &gt; <strong>Rekeninginstellingen</strong> &gt; <strong>Inloggen met PayPal</strong> te gaan en deze webwinkel uit de lijst te halen.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|GB"

    const-string v2, "<h1><strong>Overeenkomst toekomstige betalingen</strong></h1><p>Je standaardbetaalbron wordt gebruikt voor toekomstige PayPal-betalingen van deze webwinkel.</p><p>Je kunt deze overeenkomst annuleren door in te loggen op je PayPal-rekening. Ga vervolgens naar <strong>Profiel</strong> &gt; <strong>Rekeninginstellingen</strong> &gt; <strong>Inloggen met PayPal</strong> en verwijder deze webwinkel uit de lijst.</p><p>Het gedeelte Terugkerende betaling van de <a href=\'%s\'>PayPal Gebruikersovereenkomst</a> is van toepassing.</p><p>Deze app kan een kleine testtransactie simuleren om te controleren of er betalingen kunnen worden afgeschreven van je PayPal-rekening. Er wordt niet daadwerkelijk geld afgeschreven.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|HK"

    const-string v2, "<h1><strong>Autorisatie voor toekomstige betalingen</strong></h1><p>Deze app kan een kleine testtransactie simuleren om te controleren of er in de toekomst bedragen kunnen worden afgeschreven van je PayPal-rekening. Er wordt niet daadwerkelijk geld afgeschreven.</p><p>Je standaardbetaalmethode wordt gebruikt om aankopen met PayPal te betalen.</p><p>Je kunt deze autorisatie annuleren door in te loggen op je PayPal-rekening, naar <strong>Profiel</strong> &gt; <strong>Rekeninginstellingen</strong> &gt; <strong>Inloggen met PayPal</strong> te gaan en deze webwinkel uit de lijst te halen.</p><p>Zie het gedeelte \u2018Vooraf goedgekeurde betalingen\u2019 in de <a href=\'%s\'>PayPal Gebruikersovereenkomst</a> voor meer informatie.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|JP"

    const-string v2, "<h1><strong>Autorisatie voor toekomstige betalingen</strong></h1><p>Deze app kan een kleine testtransactie simuleren om te controleren of er in de toekomst bedragen kunnen worden afgeschreven van je PayPal-rekening. Er wordt niet daadwerkelijk geld afgeschreven.</p><p>Je standaardbetaalmethode wordt gebruikt om aankopen met PayPal te betalen.</p><p>Je kunt deze autorisatie annuleren door in te loggen op je PayPal-rekening, naar <strong>Profiel</strong> &gt; <strong>Rekeninginstellingen</strong> &gt; <strong>Inloggen met PayPal</strong> te gaan en deze webwinkel uit de lijst te halen.</p><p>Zie het gedeelte \u2018Vooraf goedgekeurde betalingen\u2019 in de <a href=\'%s\'>PayPal Gebruikersovereenkomst</a> voor meer informatie.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|MX"

    const-string v2, "<h1><strong>Overeenkomst toekomstige betalingen</strong></h1><p>Deze app kan een kleine testtransactie simuleren om te controleren of er in de toekomst bedragen kunnen worden afgeschreven van je PayPal-rekening. Er wordt niet daadwerkelijk geld afgeschreven.</p><p>We gebruiken je PayPal-saldo of primaire creditcard om voor aankopen met PayPal te betalen.</p><p>Je kunt deze overeenkomst annuleren door in te loggen op je PayPal-rekening, naar <strong>Profiel</strong> &gt; <strong>Rekeninginstellingen</strong> &gt; <strong>Inloggen met PayPal</strong> te gaan en deze webwinkel uit de lijst te halen.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|MY"

    const-string v2, "<h1><strong>Autorisatie voor toekomstige betalingen</strong></h1><p>Deze app kan een kleine testtransactie simuleren om te controleren of er in de toekomst bedragen kunnen worden afgeschreven van je PayPal-rekening. Er wordt niet daadwerkelijk geld afgeschreven.</p><p>Je standaardbetaalmethode wordt gebruikt om aankopen met PayPal te betalen.</p><p>Je kunt deze autorisatie annuleren door in te loggen op je PayPal-rekening, naar <strong>Profiel</strong> &gt; <strong>Rekeninginstellingen</strong> &gt; <strong>Inloggen met PayPal</strong> te gaan en deze webwinkel uit de lijst te halen.</p><p>Zie het gedeelte \u2018Vooraf goedgekeurde betalingen\u2019 in de <a href=\'%s\'>PayPal Gebruikersovereenkomst</a> voor meer informatie.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|NZ"

    const-string v2, "<h1><strong>Autorisatie voor toekomstige betalingen</strong></h1><p>Deze app kan een kleine testtransactie simuleren om te controleren of er in de toekomst bedragen kunnen worden afgeschreven van je PayPal-rekening. Er wordt niet daadwerkelijk geld afgeschreven.</p><p>Je standaardbetaalmethode wordt gebruikt om aankopen met PayPal te betalen.</p><p>Je kunt deze autorisatie annuleren door in te loggen op je PayPal-rekening, naar <strong>Profiel</strong> &gt; <strong>Rekeninginstellingen</strong> &gt; <strong>Inloggen met PayPal</strong> te gaan en deze webwinkel uit de lijst te halen.</p><p>Zie het gedeelte \u2018Vooraf goedgekeurde betalingen\u2019 in de <a href=\'%s\'>PayPal Gebruikersovereenkomst</a> voor meer informatie.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|SG"

    const-string v2, "<h1><strong>Autorisatie voor toekomstige betalingen</strong></h1><p>Deze app kan een kleine testtransactie simuleren om te controleren of er in de toekomst bedragen kunnen worden afgeschreven van je PayPal-rekening. Er wordt niet daadwerkelijk geld afgeschreven.</p><p>Je standaardbetaalmethode wordt gebruikt om aankopen met PayPal te betalen.</p><p>Je kunt deze autorisatie annuleren door in te loggen op je PayPal-rekening, naar <strong>Profiel</strong> &gt; <strong>Rekeninginstellingen</strong> &gt; <strong>Inloggen met PayPal</strong> te gaan en deze webwinkel uit de lijst te halen.</p><p>Zie het gedeelte \u2018Vooraf goedgekeurde betalingen\u2019 in de <a href=\'%s\'>PayPal Gebruikersovereenkomst</a> voor meer informatie.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|US"

    const-string v2, "<h1><strong>Overeenkomst toekomstige betalingen</strong></h1><p>PayPal gebruikt eerst je PayPal-saldo om voor je aankoop te betalen. Als je saldo ontoereikend is om voor het totaalbedrag te betalen, worden in volgorde eerst je bankrekening, creditcard en vervolgens een uitgestelde bankbetaling gebruikt.</p><p>Je kunt deze overeenkomst annuleren door naar www.paypal.com <strong>Profiel</strong> &gt; <strong>Rekeninginstellingen</strong> &gt; <strong>Inloggen met PayPal</strong> te gaan en deze webwinkel uit de lijst te halen.</p><p>Het kan zijn dat je een kleine betaling moet autoriseren om het mogelijk te maken dat er in de toekomst bedragen van je PayPal-rekening kunnen worden afgeschreven. De autorisatie wordt geannuleerd en er wordt niets afgeschreven.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "LOG_IN_TO_PAYPAL|AU"

    const-string v2, "Inloggen met PayPal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "LOG_IN_TO_PAYPAL|GB"

    const-string v2, "Inloggen met PayPal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|AD"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevante transactiegegevens worden met de webwinkel gedeeld.</p><p>Je kunt de toestemming intrekken door op paypal.com in te loggen en bij <strong>Profiel</strong>, <strong>Beveiliging</strong>, de optie <strong>Inloggen met PayPal</strong> te zoeken en deze webwinkel te verwijderen.</p><p>PayPal is niet verantwoordelijk voor handelingen of fouten van de webwinkel.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|AL"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevante transactiegegevens worden met de webwinkel gedeeld.</p><p>Je kunt de toestemming intrekken door op paypal.com in te loggen en bij <strong>Profiel</strong>, <strong>Beveiliging</strong>, de optie <strong>Inloggen met PayPal</strong> te zoeken en deze webwinkel te verwijderen.</p><p>PayPal is niet verantwoordelijk voor handelingen of fouten van de webwinkel.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|AT"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevante transactiegegevens worden met de partner gedeeld.</p><p>Je kunt de toestemming intrekken door op je PayPal-rekening in te loggen en op het instellingenicoontje te klikken. Ga naar <strong>Beveiliging</strong>, selecteer <strong>Inloggen met PayPal</strong> en verwijder deze partner.</p><p>PayPal is niet verantwoordelijk voor handelingen of fouten van de partner.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|AU"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevante transactiegegevens worden met de webwinkel gedeeld.</p><p>Je kunt de toestemming intrekken door op je PayPal-rekening in te loggen en naar de optie <strong>Inloggen met PayPal</strong> onder <strong>Profiel</strong>-instellingen te gaan en deze webwinkel te verwijderen.</p><p>PayPal is niet verantwoordelijk voor handelingen of fouten van de partner.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|BA"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevante transactiegegevens worden met de webwinkel gedeeld.</p><p>Je kunt de toestemming intrekken door op paypal.com in te loggen en bij <strong>Profiel</strong>, <strong>Beveiliging</strong>, de optie <strong>Inloggen met PayPal</strong> te zoeken en deze webwinkel te verwijderen.</p><p>PayPal is niet verantwoordelijk voor handelingen of fouten van de webwinkel.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|BE"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevante transactiegegevens worden met de webwinkel gedeeld.</p><p>Je kunt de toestemming intrekken door op je PayPal-rekening in te loggen en naar de optie <strong>Inloggen met PayPal</strong> te gaan bij je <strong>Profiel</strong>-instellingen en deze webwinkel te verwijderen.</p><p>PayPal is niet verantwoordelijk voor handelingen of fouten van de webwinkel.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|BG"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevante transactiegegevens worden met de webwinkel gedeeld.</p><p>Je kunt de toestemming intrekken door op paypal.com in te loggen en bij <strong>Profiel</strong>, <strong>Beveiliging</strong>, de optie <strong>Inloggen met PayPal</strong> te zoeken en deze webwinkel te verwijderen.</p><p>PayPal is niet verantwoordelijk voor handelingen of fouten van de webwinkel.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|CH"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevante transactiegegevens worden met de partner gedeeld.</p><p>Je kunt de toestemming intrekken door op je PayPal-rekening in te loggen en op het instellingenicoontje te klikken. Ga naar <strong>Beveiliging</strong>, selecteer <strong>Inloggen met PayPal</strong> en verwijder deze partner.</p><p>PayPal is niet verantwoordelijk voor handelingen of fouten van de partner.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|CY"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevante transactiegegevens worden met de webwinkel gedeeld.</p><p>Je kunt de toestemming intrekken door op paypal.com in te loggen en bij <strong>Profiel</strong>, <strong>Beveiliging</strong>, de optie <strong>Inloggen met PayPal</strong> te zoeken en deze webwinkel te verwijderen.</p><p>PayPal is niet verantwoordelijk voor handelingen of fouten van de webwinkel.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|CZ"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevante transactiegegevens worden met de webwinkel gedeeld.</p><p>Je kunt de toestemming intrekken door op paypal.com in te loggen en bij <strong>Profiel</strong>, <strong>Beveiliging</strong>, de optie <strong>Inloggen met PayPal</strong> te zoeken en deze webwinkel te verwijderen.</p><p>PayPal is niet verantwoordelijk voor handelingen of fouten van de webwinkel.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|DE"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevante transactiegegevens worden met de partner gedeeld.</p><p>Je kunt de toestemming intrekken door op je PayPal-rekening in te loggen en op het instellingenicoontje te klikken. Ga naar <strong>Beveiliging</strong>, selecteer <strong>Inloggen met PayPal</strong> en verwijder deze partner.</p><p>PayPal is niet verantwoordelijk voor handelingen of fouten van de partner.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|DK"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevante transactiegegevens worden met de webwinkel gedeeld.</p><p>Je kunt de toestemming intrekken door op je PayPal-rekening in te loggen en naar de optie <strong>Inloggen met PayPal</strong> onder <strong>Profiel</strong>-instellingen te gaan en deze webwinkel te verwijderen.</p><p>PayPal is niet verantwoordelijk voor handelingen of fouten van de webwinkel.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|EE"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevante transactiegegevens worden met de webwinkel gedeeld.</p><p>Je kunt de toestemming intrekken door op paypal.com in te loggen en bij <strong>Profiel</strong>, <strong>Beveiliging</strong>, de optie <strong>Inloggen met PayPal</strong> te zoeken en deze webwinkel te verwijderen.</p><p>PayPal is niet verantwoordelijk voor handelingen of fouten van de webwinkel.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|ES"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevante transactiegegevens worden met de webwinkel gedeeld.</p><p>Je kunt de toestemming intrekken door op je PayPal-rekening in te loggen, in de rechterbovenhoek op het instellingenicoontje te klikken, de optie <strong>Veilig handelen</strong> te kiezen, <strong>Inloggen met PayPal</strong> te selecteren en de webwinkel te verwijderen. Als je de klassieke website nog gebruikt, ga je naar <strong>Mijn profiel</strong> &gt; <strong>Rekeninggegevens</strong> &gt; <strong>Inloggen met PayPal</strong> en verwijder je de webwinkel.</p><p>PayPal is niet verantwoordelijk voor handelingen of fouten van de webwinkel.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|FI"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevante transactiegegevens worden met de webwinkel gedeeld.</p><p>Je kunt de toestemming intrekken door op paypal.com in te loggen en bij <strong>Profiel</strong>, <strong>Beveiliging</strong>, de optie <strong>Inloggen met PayPal</strong> te zoeken en deze webwinkel te verwijderen.</p><p>PayPal is niet verantwoordelijk voor handelingen of fouten van de webwinkel.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|GB"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevante transactiegegevens worden met de partner gedeeld.</p><p>Je kunt de toestemming intrekken door op je PayPal-rekening in te loggen en via de <strong>Profiel</strong>-instellingen naar <strong>Inloggen met PayPal</strong> te gaan en deze partner te verwijderen.</p><p>PayPal is niet verantwoordelijk voor handelingen of fouten van de partner.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|GR"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevante transactiegegevens worden met de webwinkel gedeeld.</p><p>Je kunt de toestemming intrekken door op paypal.com in te loggen en bij <strong>Profiel</strong>, <strong>Beveiliging</strong>, de optie <strong>Inloggen met PayPal</strong> te zoeken en deze webwinkel te verwijderen.</p><p>PayPal is niet verantwoordelijk voor handelingen of fouten van de webwinkel.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|HR"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevante transactiegegevens worden met de webwinkel gedeeld.</p><p>Je kunt de toestemming intrekken door op paypal.com in te loggen en bij <strong>Profiel</strong>, <strong>Beveiliging</strong>, de optie <strong>Inloggen met PayPal</strong> te zoeken en deze webwinkel te verwijderen.</p><p>PayPal is niet verantwoordelijk voor handelingen of fouten van de webwinkel.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|HU"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevante transactiegegevens worden met de webwinkel gedeeld.</p><p>Je kunt de toestemming intrekken door op paypal.com in te loggen en bij <strong>Profiel</strong>, <strong>Beveiliging</strong>, de optie <strong>Inloggen met PayPal</strong> te zoeken en deze webwinkel te verwijderen.</p><p>PayPal is niet verantwoordelijk voor handelingen of fouten van de webwinkel.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|IE"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevante transactiegegevens worden met de webwinkel gedeeld.</p><p>Je kunt de toestemming intrekken door op paypal.com in te loggen en bij <strong>Profiel</strong>, <strong>Beveiliging</strong>, de optie <strong>Inloggen met PayPal</strong> te zoeken en deze webwinkel te verwijderen.</p><p>PayPal is niet verantwoordelijk voor handelingen of fouten van de webwinkel.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|IS"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevante transactiegegevens worden met de webwinkel gedeeld.</p><p>Je kunt de toestemming intrekken door op paypal.com in te loggen en bij <strong>Profiel</strong>, <strong>Beveiliging</strong>, de optie <strong>Inloggen met PayPal</strong> te zoeken en deze webwinkel te verwijderen.</p><p>PayPal is niet verantwoordelijk voor handelingen of fouten van de webwinkel.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|IT"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevante transactiegegevens worden met de webwinkel gedeeld.</p><p>Je kunt de toestemming intrekken door op paypal.it in te loggen en via <strong>Profiel</strong>, <strong>Beveiliging</strong> naar de optie <strong>Inloggen met PayPal</strong> te zoeken en deze webwinkel te verwijderen.</p><p>PayPal is niet verantwoordelijk voor handelingen of fouten van de webwinkel.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|LI"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevante transactiegegevens worden met de webwinkel gedeeld.</p><p>Je kunt de toestemming intrekken door op paypal.com in te loggen en bij <strong>Profiel</strong>, <strong>Beveiliging</strong>, de optie <strong>Inloggen met PayPal</strong> te zoeken en deze webwinkel te verwijderen.</p><p>PayPal is niet verantwoordelijk voor handelingen of fouten van de webwinkel.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|LT"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevante transactiegegevens worden met de webwinkel gedeeld.</p><p>Je kunt de toestemming intrekken door op paypal.com in te loggen en bij <strong>Profiel</strong>, <strong>Beveiliging</strong>, de optie <strong>Inloggen met PayPal</strong> te zoeken en deze webwinkel te verwijderen.</p><p>PayPal is niet verantwoordelijk voor handelingen of fouten van de webwinkel.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|LU"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevante transactiegegevens worden met de webwinkel gedeeld.</p><p>Je kunt de toestemming intrekken door op paypal.com in te loggen en bij <strong>Profiel</strong>, <strong>Beveiliging</strong>, de optie <strong>Inloggen met PayPal</strong> te zoeken en deze webwinkel te verwijderen.</p><p>PayPal is niet verantwoordelijk voor handelingen of fouten van de webwinkel.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|LV"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevante transactiegegevens worden met de webwinkel gedeeld.</p><p>Je kunt de toestemming intrekken door op paypal.com in te loggen en bij <strong>Profiel</strong>, <strong>Beveiliging</strong>, de optie <strong>Inloggen met PayPal</strong> te zoeken en deze webwinkel te verwijderen.</p><p>PayPal is niet verantwoordelijk voor handelingen of fouten van de webwinkel.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|MT"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevante transactiegegevens worden met de webwinkel gedeeld.</p><p>Je kunt de toestemming intrekken door op paypal.com in te loggen en bij <strong>Profiel</strong>, <strong>Beveiliging</strong>, de optie <strong>Inloggen met PayPal</strong> te zoeken en deze webwinkel te verwijderen.</p><p>PayPal is niet verantwoordelijk voor handelingen of fouten van de webwinkel.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|NL"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevante transactiegegevens worden met de webwinkel gedeeld.</p><p>Je kunt de toestemming intrekken door op je PayPal-rekening in te loggen en naar de optie <strong>Inloggen met PayPal</strong> te gaan bij je <strong>Profiel</strong>-instellingen en deze webwinkel te verwijderen.</p><p>PayPal is niet verantwoordelijk voor handelingen of fouten van de webwinkel.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|NO"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevante transactiegegevens worden met de webwinkel gedeeld.</p><p>Je kunt de toestemming intrekken door op je PayPal-rekening in te loggen en naar de optie <strong>Inloggen met PayPal</strong> onder <strong>Profiel</strong>-instellingen te gaan en deze webwinkel te verwijderen.</p><p>PayPal is niet verantwoordelijk voor handelingen of fouten van de webwinkel.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|PL"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevante transactiegegevens worden met de webwinkel gedeeld.</p><p>Je kunt de toestemming intrekken door op je PayPal-rekening in te loggen en naar de optie <strong>Inloggen met PayPal</strong> te gaan bij je <strong>Profiel</strong>-instellingen en deze webwinkel te verwijderen.</p><p>PayPal is niet verantwoordelijk voor handelingen of fouten van de webwinkel.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|PT"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevante transactiegegevens worden met de webwinkel gedeeld.</p><p>Je kunt de toestemming intrekken door op paypal.com in te loggen en bij <strong>Profiel</strong>, <strong>Beveiliging</strong>, de optie <strong>Inloggen met PayPal</strong> te zoeken en deze webwinkel te verwijderen.</p><p>PayPal is niet verantwoordelijk voor handelingen of fouten van de webwinkel.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|RO"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevante transactiegegevens worden met de webwinkel gedeeld.</p><p>Je kunt de toestemming intrekken door op paypal.com in te loggen en bij <strong>Profiel</strong>, <strong>Beveiliging</strong>, de optie <strong>Inloggen met PayPal</strong> te zoeken en deze webwinkel te verwijderen.</p><p>PayPal is niet verantwoordelijk voor handelingen of fouten van de webwinkel.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|RU"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevante transactiegegevens worden met de partner gedeeld.</p><p>Je kunt de toestemming intrekken door op paypal.ru in te loggen, in de rechterbovenhoek op het instellingenicoontje te klikken, het tabblad <strong>Beveiliging</strong> te kiezen en deze partner te verwijderen bij de optie <strong>Inloggen met PayPal</strong>.</p><p>PayPal is niet verantwoordelijk voor handelingen of fouten van de partner.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|SE"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevante transactiegegevens worden met de webwinkel gedeeld.</p><p>Je kunt de toestemming intrekken door op je PayPal-rekening in te loggen en naar de optie <strong>Inloggen met PayPal</strong> onder <strong>Profiel</strong>-instellingen te gaan en deze webwinkel te verwijderen.</p><p>PayPal is niet verantwoordelijk voor handelingen of fouten van de webwinkel.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|SI"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevante transactiegegevens worden met de webwinkel gedeeld.</p><p>Je kunt de toestemming intrekken door op paypal.com in te loggen en bij <strong>Profiel</strong>, <strong>Beveiliging</strong>, de optie <strong>Inloggen met PayPal</strong> te zoeken en deze webwinkel te verwijderen.</p><p>PayPal is niet verantwoordelijk voor handelingen of fouten van de webwinkel.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|SK"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevante transactiegegevens worden met de webwinkel gedeeld.</p><p>Je kunt de toestemming intrekken door op paypal.com in te loggen en bij <strong>Profiel</strong>, <strong>Beveiliging</strong>, de optie <strong>Inloggen met PayPal</strong> te zoeken en deze webwinkel te verwijderen.</p><p>PayPal is niet verantwoordelijk voor handelingen of fouten van de webwinkel.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|SM"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevante transactiegegevens worden met de webwinkel gedeeld.</p><p>Je kunt de toestemming intrekken door op paypal.com in te loggen en bij <strong>Profiel</strong>, <strong>Beveiliging</strong>, de optie <strong>Inloggen met PayPal</strong> te zoeken en deze webwinkel te verwijderen.</p><p>PayPal is niet verantwoordelijk voor handelingen of fouten van de webwinkel.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|TR"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevante transactiegegevens worden met de webwinkel gedeeld.</p><p>Je kunt de toestemming intrekken door op paypal.com.tr in te loggen, in de rechterbovenhoek op het instellingenicoontje te klikken, het tabblad <strong>Beveiliging</strong> te kiezen en deze partner te verwijderen bij de optie <strong>Inloggen met PayPal</strong>.</p><p>PayPal is niet verantwoordelijk voor handelingen of fouten van de webwinkel.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|UA"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevante transactiegegevens worden met de webwinkel gedeeld.</p><p>Je kunt de toestemming intrekken door op paypal.com in te loggen en bij <strong>Profiel</strong>, <strong>Beveiliging</strong>, de optie <strong>Inloggen met PayPal</strong> te zoeken en deze webwinkel te verwijderen.</p><p>PayPal is niet verantwoordelijk voor handelingen of fouten van de webwinkel.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|US"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevante transactiegegevens worden met de webwinkel gedeeld.</p><p>Je kunt de toestemming intrekken door op je PayPal-rekening in te loggen en naar de optie <strong>Inloggen met PayPal</strong> onder <strong>Profiel</strong>-instellingen te gaan en deze webwinkel te verwijderen.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|VA"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevante transactiegegevens worden met de webwinkel gedeeld.</p><p>Je kunt de toestemming intrekken door op paypal.com in te loggen en bij <strong>Profiel</strong>, <strong>Beveiliging</strong>, de optie <strong>Inloggen met PayPal</strong> te zoeken en deze webwinkel te verwijderen.</p><p>PayPal is niet verantwoordelijk voor handelingen of fouten van de webwinkel.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|ZA"

    const-string v2, "<h1><strong>%s</strong></h1><p>Alle relevante transactiegegevens worden met de webwinkel gedeeld.</p><p>Je kunt de toestemming intrekken door op paypal.com in te loggen en bij <strong>Profiel</strong>, <strong>Beveiliging</strong>, de optie <strong>Inloggen met PayPal</strong> te zoeken en deze webwinkel te verwijderen.</p><p>PayPal is niet verantwoordelijk voor handelingen of fouten van de webwinkel.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "AMOUNT_MISMATCH"

    const-string v2, "Het totaalbedrag van items in het winkelwagentje komt niet overeen met het verkoopbedrag."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_ALREADY_COMPLETED"

    const-string v2, "Deze autorisatie is al voltooid."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_CANNOT_BE_VOIDED"

    const-string v2, "Autorisatie heeft status die niet ongeldig kan worden gemaakt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_EXPIRED"

    const-string v2, "Autorisatie is vervallen."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_ID_DOES_NOT_EXIST"

    const-string v2, "De gevraagde autorisatiereferentie bestaat niet."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_VOIDED"

    const-string v2, "Autorisatie is ongeldig gemaakt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "CANNOT_REAUTH_CHILD_AUTHORIZATION"

    const-string v2, "Herautorisatie is alleen mogelijk van de oorspronkelijke autorisatie, niet van een herautorisatie."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "CANNOT_REAUTH_INSIDE_HONOR_PERIOD"

    const-string v2, "Herautorisatie is niet toegestaan binnen de betaalperiode."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "CAPTURE_AMOUNT_LIMIT_EXCEEDED"

    const-string v2, "Het bedrag overschrijdt de toegestane limiet."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "CARD_TOKEN_PAYER_MISMATCH"

    const-string v2, "Toegang tot opgeslagen kaartgegevens mislukt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "CREDIT_CARD_CVV_CHECK_FAILED"

    const-string v2, "De kaartgegevens zijn ongeldig. Corrigeer ze en verzend ze opnieuw."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "CREDIT_CARD_REFUSED"

    const-string v2, "Kaart afgewezen."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "CURRENCY_MISMATCH"

    const-string v2, "De valuta van de overboeking moet hetzelfde zijn als de autorisatievaluta."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "CURRENCY_NOT_ALLOWED"

    const-string v2, "Deze valuta wordt op dit moment niet door PayPal ondersteund."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "DATA_RETRIEVAL"

    const-string v2, "Systeemfout. Probeer het later opnieuw."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "DUPLICATE_REQUEST_ID"

    const-string v2, "Systeemfout. Probeer het later opnieuw."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "EXPIRED_CREDIT_CARD"

    const-string v2, "Kaart is verlopen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "EXPIRED_CREDIT_CARD_TOKEN"

    const-string v2, "De gegevens van deze kaart staan niet meer bij ons geregistreerd.\nVerzend de opnieuw."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "FEATURE_UNSUPPORTED_FOR_PAYEE"

    const-string v2, "Functie wordt niet door leverancier ondersteund."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "FULL_REFUND_NOT_ALLOWED_AFTER_PARTIAL_REFUND"

    const-string v2, "Deze transactie is al gedeeltelijk terugbetaald."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "IMMEDIATE_PAY_NOT_SUPPORTED"

    const-string v2, "Direct betalen wordt niet ondersteund."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "INSTRUMENT_DECLINED"

    const-string v2, "De door jou geselecteerde betaalmethode is niet geaccepteerd. Kies een andere betaalmethode."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "INSUFFICIENT_FUNDS"

    const-string v2, "Koper kan niet betalen - te laag saldo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "INTERNAL_SERVICE_ERROR"

    const-string v2, "Systeemfout. Probeer het later opnieuw."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "INVALID_ACCOUNT_NUMBER"

    const-string v2, "Dat rekeningnummer bestaat niet."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "INVALID_ARGUMENT"

    const-string v2, "Transactie geweigerd vanwege ongeldig argument."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "INVALID_CITY_STATE_ZIP"

    const-string v2, "Combinatie plaats/staat/postcode ongeldig"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "INVALID_FACILITATOR_CONFIGURATION"

    const-string v2, "Deze transactie kan niet worden verwerkt vanwege een ongeldige facilitator-configuratie."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "INVALID_PAYER_ID"

    const-string v2, "Systeemfout: (ongeldige betalersreferentie). Probeer het later opnieuw."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "INVALID_RESOURCE_ID"

    const-string v2, "Systeemfout. Probeer het later opnieuw."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "PAYEE_ACCOUNT_INVALID"

    const-string v2, "E-mailadres van rekening leverancier is niet bevestigd."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "PAYEE_ACCOUNT_LOCKED_OR_CLOSED"

    const-string v2, "Deze leverancier kan op dit moment geen betalingen ontvangen."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "PAYEE_ACCOUNT_NO_CONFIRMED_EMAIL"

    const-string v2, "E-mailadres van rekening leverancier is niet bevestigd."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "PAYEE_ACCOUNT_RESTRICTED"

    const-string v2, "Deze leverancier kan op dit moment geen betalingen ontvangen."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "PAYER_ACCOUNT_LOCKED_OR_CLOSED"

    const-string v2, "Je rekening is vergrendeld of gesloten."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "PAYER_ACCOUNT_RESTRICTED"

    const-string v2, "Je rekening is beperkt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "PAYER_CANNOT_PAY"

    const-string v2, "Deze transactie kun je niet met PayPal betalen."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "PAYER_EMPTY_BILLING_ADDRESS"

    const-string v2, "Voor creditcardtransacties die niet via PayPal verlopen is er een factuuradres nodig."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "PAYER_ID_MISSING_FOR_CARD_TOKEN"

    const-string v2, "Toegang tot opgeslagen kaartgegevens mislukt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_APPROVAL_EXPIRED"

    const-string v2, "Betaalgoedkeuring is vervallen."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_EXPIRED"

    const-string v2, "De betaling is vervallen."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_NOT_APPROVED_FOR_EXECUTION"

    const-string v2, "De betaler heeft de betaling niet goedgekeurd."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_REQUEST_ID_INVALID"

    const-string v2, "De referentie voor dit PayPal-verzoek is ongeldig. Probeer het later opnieuw."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_STATE_INVALID"

    const-string v2, "Dit verzoek is ongeldig ten gevolge van de huidige status van de betaling."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "PERMISSION_DENIED"

    const-string v2, "Geen toestemming voor de gevraagde bewerking."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "REFUND_EXCEEDED_TRANSACTION_AMOUNT"

    const-string v2, "De gevraagde terugbetaling is hoger dan het bedrag van de oorspronkelijke transactie."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "REFUND_TIME_LIMIT_EXCEEDED"

    const-string v2, "Deze transactie is te oud voor terugbetaling."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "REQUIRED_SCOPE_MISSING"

    const-string v2, "Systeemfout. Probeer het later opnieuw."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "TOO_MANY_REAUTHORIZATIONS"

    const-string v2, "Er zijn geen herautorisaties meer toegestaan voor deze autorisatie."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_ALREADY_REFUNDED"

    const-string v2, "Deze transactie is al terugbetaald."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_LIMIT_EXCEEDED"

    const-string v2, "Het bedrag overschrijdt de toegestane limiet."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_REFUSED"

    const-string v2, "De transactie is geweigerd."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_REFUSED_BY_PAYPAL_RISK"

    const-string v2, "De transactie is geweigerd."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_REFUSED_PAYEE_PREFERENCE"

    const-string v2, "Het profiel van de webwinkel is ingesteld om bepaalde transacties automatisch te weigeren."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "UNKNOWN_ERROR"

    const-string v2, "Systeemfout. Probeer het later opnieuw."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "UNSUPPORTED_PAYEE_COUNTRY"

    const-string v2, "Er is geen ondersteuning voor je land."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "VALIDATION_ERROR"

    const-string v2, "De betalingsgegevens zijn ongeldig. Corrigeer ze en verzend ze opnieuw."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "ORDER_ALREADY_COMPLETED"

    const-string v2, "Bestelling is al ongeldig gemaakt, verlopen of voltooid."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "MAXIMUM_ALLOWED_AUTHORIZATION_REACHED_FOR_ORDER"

    const-string v2, "Het maximale aantal toegestane autorisaties voor de bestelling is bereikt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "ORDER_VOIDED"

    const-string v2, "Je bestelling is ongeldig gemaakt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "ORDER_CANNOT_BE_VOIDED"

    const-string v2, "De bestelling heeft een status die verhindert dat deze ongeldig kan worden gemaakt."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "INVALID_EXPERIENCE_PROFILE_ID"

    const-string v2, "Systeemfout. Probeer het later opnieuw."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "UNAUTHORIZED_PAYMENT"

    const-string v2, "Deze webwinkel accepteert dit type betalingen niet."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "DCC_UNSUPPORTED_CURRENCY_CC_TYPE"

    const-string v2, "Valuta niet ondersteund voor type creditcard."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "DCC_CC_TYPE_NOT_SUPPORTED"

    const-string v2, "Kaarttype wordt niet ondersteund."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "ADDRESS_ADDITION_ERROR"

    const-string v2, "Er is een fout opgetreden bij het toevoegen van het verzendadres aan de PayPal-rekening."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "DUPLICATE_TRANSACTION"

    const-string v2, "Dubbele transactie."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "INVALID_SHIPPING_ADDRESS"

    const-string v2, "Het verstrekte verzendadres is ongeldig."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR"

    const-string v2, "Er is een probleem opgetreden bij het instellen van deze betaling. Ga naar de PayPal-website om je rekening te controleren."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_EXPIRED_PAYMENT_CARD"

    const-string v2, "Er is een probleem opgetreden bij het instellen van deze betaling - je kaart is verlopen. Ga naar de PayPal-website om je rekening te controleren."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_INSTANT_PAYMENT_REQUIRED"

    const-string v2, "Er is een probleem opgetreden bij het instellen van deze betaling - er is een directe betaling vereist, zoals met een creditcard. Ga naar de PayPal-website om je rekening te controleren."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_NEED_CONFIRMED_CARD"

    const-string v2, "Er is een probleem opgetreden bij het instellen van deze betaling - de kaart moet worden bevestigd. Ga naar de PayPal-website om je rekening te controleren."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_NEED_PHONE_NUMBER"

    const-string v2, "Er is een probleem opgetreden bij het instellen van deze betaling - voor deze app is het nodig een telefoon aan je rekening toe te voegen. Ga naar de PayPal-website om je rekening te controleren."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_NEED_VALID_FUNDING_INSTRUMENT"

    const-string v2, "Er is een probleem opgetreden bij het instellen van deze betaling - rekening heeft een geldige betaalbron zoals een bank- of betaalkaart nodig. Ga naar de PayPal-website om je rekening te controleren."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_NEGATIVE_BALANCE"

    const-string v2, "Er is een probleem opgetreden bij het instellen van deze betaling - je bent je saldo nog een bedrag verschuldigd. Ga naar de PayPal-website om je rekening te controleren."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_SENDING_LIMIT_REACHED"

    const-string v2, "Er is een probleem opgetreden bij het instellen van deze betaling -je hebt je verzendlimiet bereikt. Ga naar de PayPal-website om je rekening te controleren."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "AUTH_RC_RISK_FAILURE"

    const-string v2, "Afgewezen wegens risico"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "AUTH_RC_OFAC_BLOCKED_IP"

    const-string v2, "Client niet goedgekeurd."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "AUTH_RC_IP_COMPLIANCE_FAILURE"

    const-string v2, "Client niet goedgekeurd."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "invalid_user"

    const-string v2, "Gebruikersnaam/wachtwoord onjuist Probeer het opnieuw."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "locked_user"

    const-string v2, "Je PayPal-rekening is tijdelijk geblokkeerd. Probeer het later opnieuw of ga naar www.paypal.com om de blokkade direct op te heffen."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "max_attempts_exceeded"

    const-string v2, "Te veel mislukte inlogpogingen. Probeer het later opnieuw."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "invalid_request"

    const-string v2, "Er is een fout opgetreden."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "unauthorized_client"

    const-string v2, "Verzoek niet goedgekeurd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "access_denied"

    const-string v2, "Verzoek niet goedgekeurd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "unsupported_response_type"

    const-string v2, "Er is een fout opgetreden."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "invalid_scope"

    const-string v2, "Verzoek niet goedgekeurd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "server_error"

    const-string v2, "Systeemfout. Probeer het later opnieuw."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "temporarily_unavailable"

    const-string v2, "Systeemfout. Probeer het later opnieuw."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "stepup_required"

    const-string v2, "Je kunt op dit moment niet inloggen. Probeer het later opnieuw of ga naar www.paypal.com om eventuele beveiligingsproblemen met je PayPal-rekening af te handelen."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    const-string v1, "account_locked_generate_challenge_limit_exceeded"

    const-string v2, "Te veel inlogpogingen. Probeer het later opnieuw of neem contact op met PayPal voor hulp."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    const-string v0, "nl"

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

    sget-object v1, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    sget-object v1, Lcom/paypal/android/sdk/y;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_2d
    return-object v0

    :cond_2e
    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2d
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/paypal/android/sdk/y;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
