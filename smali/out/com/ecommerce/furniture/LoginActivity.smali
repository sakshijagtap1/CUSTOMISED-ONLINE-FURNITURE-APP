.class public Lcom/ecommerce/furniture/LoginActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final activity:Landroid/support/v7/app/AppCompatActivity;

.field private appCompatButtonLogin:Landroid/support/v7/widget/AppCompatButton;

.field private databaseHelper:Lcom/ecommerce/furniture/helpers/DatabaseHelper;

.field private inputValidation:Lcom/ecommerce/furniture/helpers/InputValidation;

.field private nestedScrollView:Landroid/support/v4/widget/NestedScrollView;

.field private textInputEditTextEmail:Landroid/support/design/widget/TextInputEditText;

.field private textInputEditTextPassword:Landroid/support/design/widget/TextInputEditText;

.field private textInputLayoutEmail:Landroid/support/design/widget/TextInputLayout;

.field private textInputLayoutPassword:Landroid/support/design/widget/TextInputLayout;

.field private textViewLinkRegister:Landroid/support/v7/widget/AppCompatTextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 20
    iput-object p0, p0, Lcom/ecommerce/furniture/LoginActivity;->activity:Landroid/support/v7/app/AppCompatActivity;

    return-void
.end method

.method private emptyInputEditText()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 137
    iget-object v0, p0, Lcom/ecommerce/furniture/LoginActivity;->textInputEditTextEmail:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/ecommerce/furniture/LoginActivity;->textInputEditTextPassword:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 139
    return-void
.end method

.method private initListeners()V
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/ecommerce/furniture/LoginActivity;->appCompatButtonLogin:Landroid/support/v7/widget/AppCompatButton;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/ecommerce/furniture/LoginActivity;->textViewLinkRegister:Landroid/support/v7/widget/AppCompatTextView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/AppCompatTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    return-void
.end method

.method private initObjects()V
    .registers 3

    .prologue
    .line 79
    new-instance v0, Lcom/ecommerce/furniture/helpers/DatabaseHelper;

    iget-object v1, p0, Lcom/ecommerce/furniture/LoginActivity;->activity:Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {v0, v1}, Lcom/ecommerce/furniture/helpers/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ecommerce/furniture/LoginActivity;->databaseHelper:Lcom/ecommerce/furniture/helpers/DatabaseHelper;

    .line 80
    new-instance v0, Lcom/ecommerce/furniture/helpers/InputValidation;

    iget-object v1, p0, Lcom/ecommerce/furniture/LoginActivity;->activity:Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {v0, v1}, Lcom/ecommerce/furniture/helpers/InputValidation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ecommerce/furniture/LoginActivity;->inputValidation:Lcom/ecommerce/furniture/helpers/InputValidation;

    .line 82
    return-void
.end method

.method private initViews()V
    .registers 2

    .prologue
    .line 53
    const v0, 0x7f0c00a6

    invoke-virtual {p0, v0}, Lcom/ecommerce/furniture/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/NestedScrollView;

    iput-object v0, p0, Lcom/ecommerce/furniture/LoginActivity;->nestedScrollView:Landroid/support/v4/widget/NestedScrollView;

    .line 55
    const v0, 0x7f0c00a9

    invoke-virtual {p0, v0}, Lcom/ecommerce/furniture/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p0, Lcom/ecommerce/furniture/LoginActivity;->textInputLayoutEmail:Landroid/support/design/widget/TextInputLayout;

    .line 56
    const v0, 0x7f0c00ad

    invoke-virtual {p0, v0}, Lcom/ecommerce/furniture/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p0, Lcom/ecommerce/furniture/LoginActivity;->textInputLayoutPassword:Landroid/support/design/widget/TextInputLayout;

    .line 58
    const v0, 0x7f0c00b1

    invoke-virtual {p0, v0}, Lcom/ecommerce/furniture/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputEditText;

    iput-object v0, p0, Lcom/ecommerce/furniture/LoginActivity;->textInputEditTextEmail:Landroid/support/design/widget/TextInputEditText;

    .line 59
    const v0, 0x7f0c00b2

    invoke-virtual {p0, v0}, Lcom/ecommerce/furniture/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputEditText;

    iput-object v0, p0, Lcom/ecommerce/furniture/LoginActivity;->textInputEditTextPassword:Landroid/support/design/widget/TextInputEditText;

    .line 61
    const v0, 0x7f0c00b3

    invoke-virtual {p0, v0}, Lcom/ecommerce/furniture/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatButton;

    iput-object v0, p0, Lcom/ecommerce/furniture/LoginActivity;->appCompatButtonLogin:Landroid/support/v7/widget/AppCompatButton;

    .line 63
    const v0, 0x7f0c00b4

    invoke-virtual {p0, v0}, Lcom/ecommerce/furniture/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/ecommerce/furniture/LoginActivity;->textViewLinkRegister:Landroid/support/v7/widget/AppCompatTextView;

    .line 65
    return-void
.end method

.method private verifyFromSQLite()V
    .registers 7

    .prologue
    const v5, 0x7f060042

    .line 107
    iget-object v1, p0, Lcom/ecommerce/furniture/LoginActivity;->inputValidation:Lcom/ecommerce/furniture/helpers/InputValidation;

    iget-object v2, p0, Lcom/ecommerce/furniture/LoginActivity;->textInputEditTextEmail:Landroid/support/design/widget/TextInputEditText;

    iget-object v3, p0, Lcom/ecommerce/furniture/LoginActivity;->textInputLayoutEmail:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p0, v5}, Lcom/ecommerce/furniture/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/ecommerce/furniture/helpers/InputValidation;->isInputEditTextFilled(Landroid/support/design/widget/TextInputEditText;Landroid/support/design/widget/TextInputLayout;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 131
    :cond_13
    :goto_13
    return-void

    .line 110
    :cond_14
    iget-object v1, p0, Lcom/ecommerce/furniture/LoginActivity;->inputValidation:Lcom/ecommerce/furniture/helpers/InputValidation;

    iget-object v2, p0, Lcom/ecommerce/furniture/LoginActivity;->textInputEditTextEmail:Landroid/support/design/widget/TextInputEditText;

    iget-object v3, p0, Lcom/ecommerce/furniture/LoginActivity;->textInputLayoutEmail:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p0, v5}, Lcom/ecommerce/furniture/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/ecommerce/furniture/helpers/InputValidation;->isInputEditTextEmail(Landroid/support/design/widget/TextInputEditText;Landroid/support/design/widget/TextInputLayout;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 113
    iget-object v1, p0, Lcom/ecommerce/furniture/LoginActivity;->inputValidation:Lcom/ecommerce/furniture/helpers/InputValidation;

    iget-object v2, p0, Lcom/ecommerce/furniture/LoginActivity;->textInputEditTextPassword:Landroid/support/design/widget/TextInputEditText;

    iget-object v3, p0, Lcom/ecommerce/furniture/LoginActivity;->textInputLayoutPassword:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p0, v5}, Lcom/ecommerce/furniture/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/ecommerce/furniture/helpers/InputValidation;->isInputEditTextFilled(Landroid/support/design/widget/TextInputEditText;Landroid/support/design/widget/TextInputLayout;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 117
    iget-object v1, p0, Lcom/ecommerce/furniture/LoginActivity;->databaseHelper:Lcom/ecommerce/furniture/helpers/DatabaseHelper;

    iget-object v2, p0, Lcom/ecommerce/furniture/LoginActivity;->textInputEditTextEmail:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v2}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ecommerce/furniture/LoginActivity;->textInputEditTextPassword:Landroid/support/design/widget/TextInputEditText;

    .line 118
    invoke-virtual {v3}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 117
    invoke-virtual {v1, v2, v3}, Lcom/ecommerce/furniture/helpers/DatabaseHelper;->checkUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 121
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ecommerce/furniture/LoginActivity;->activity:Landroid/support/v7/app/AppCompatActivity;

    const-class v2, Lcom/ecommerce/furniture/SearchAreaWiseShopActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    .local v0, "accountsIntent":Landroid/content/Intent;
    const-string v1, "EMAIL"

    iget-object v2, p0, Lcom/ecommerce/furniture/LoginActivity;->textInputEditTextEmail:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v2}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    invoke-direct {p0}, Lcom/ecommerce/furniture/LoginActivity;->emptyInputEditText()V

    .line 124
    invoke-virtual {p0, v0}, Lcom/ecommerce/furniture/LoginActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_13

    .line 129
    .end local v0    # "accountsIntent":Landroid/content/Intent;
    :cond_7b
    iget-object v1, p0, Lcom/ecommerce/furniture/LoginActivity;->nestedScrollView:Landroid/support/v4/widget/NestedScrollView;

    const v2, 0x7f060046

    invoke-virtual {p0, v2}, Lcom/ecommerce/furniture/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_13
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_1c

    .line 101
    :goto_7
    return-void

    .line 93
    :pswitch_8
    invoke-direct {p0}, Lcom/ecommerce/furniture/LoginActivity;->verifyFromSQLite()V

    goto :goto_7

    .line 97
    :pswitch_c
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ecommerce/furniture/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/ecommerce/furniture/RegisterActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    .local v0, "intentRegister":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/ecommerce/furniture/LoginActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_7

    .line 91
    nop

    :pswitch_data_1c
    .packed-switch 0x7f0c00b3
        :pswitch_8
        :pswitch_c
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f04001d

    invoke-virtual {p0, v0}, Lcom/ecommerce/furniture/LoginActivity;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Lcom/ecommerce/furniture/LoginActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 43
    invoke-direct {p0}, Lcom/ecommerce/furniture/LoginActivity;->initViews()V

    .line 44
    invoke-direct {p0}, Lcom/ecommerce/furniture/LoginActivity;->initListeners()V

    .line 45
    invoke-direct {p0}, Lcom/ecommerce/furniture/LoginActivity;->initObjects()V

    .line 46
    return-void
.end method
