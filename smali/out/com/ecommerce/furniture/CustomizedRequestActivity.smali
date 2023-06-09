.class public Lcom/ecommerce/furniture/CustomizedRequestActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "CustomizedRequestActivity.java"


# instance fields
.field private final activity:Landroid/support/v7/app/AppCompatActivity;

.field private appCompatButtonRegister:Landroid/support/v7/widget/AppCompatButton;

.field private databaseHelper:Lcom/ecommerce/furniture/helpers/DatabaseHelper;

.field private inputValidation:Lcom/ecommerce/furniture/helpers/InputValidation;

.field private nestedScrollView:Landroid/support/v4/widget/NestedScrollView;

.field private textClass:Landroid/support/design/widget/TextInputLayout;

.field private textInputEditTextColor:Landroid/support/design/widget/TextInputEditText;

.field private textInputEditTextConfirmPassword:Landroid/support/design/widget/TextInputEditText;

.field private textInputEditTextFName:Landroid/support/design/widget/TextInputEditText;

.field private textInputEditTextQuantity:Landroid/support/design/widget/TextInputEditText;

.field private textInputEditTextSize:Landroid/support/design/widget/TextInputEditText;

.field private textInputLayoutConfirmPassword:Landroid/support/design/widget/TextInputLayout;

.field private textInputLayoutEmail:Landroid/support/design/widget/TextInputLayout;

.field private textInputLayoutName:Landroid/support/design/widget/TextInputLayout;

.field private textInputLayoutPassword:Landroid/support/design/widget/TextInputLayout;

.field private user:Lcom/ecommerce/furniture/helpers/User;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 29
    iput-object p0, p0, Lcom/ecommerce/furniture/CustomizedRequestActivity;->activity:Landroid/support/v7/app/AppCompatActivity;

    return-void
.end method

.method static synthetic access$000(Lcom/ecommerce/furniture/CustomizedRequestActivity;)Landroid/support/design/widget/TextInputEditText;
    .registers 2
    .param p0, "x0"    # Lcom/ecommerce/furniture/CustomizedRequestActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ecommerce/furniture/CustomizedRequestActivity;->textInputEditTextFName:Landroid/support/design/widget/TextInputEditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ecommerce/furniture/CustomizedRequestActivity;)Landroid/support/design/widget/TextInputEditText;
    .registers 2
    .param p0, "x0"    # Lcom/ecommerce/furniture/CustomizedRequestActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ecommerce/furniture/CustomizedRequestActivity;->textInputEditTextSize:Landroid/support/design/widget/TextInputEditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ecommerce/furniture/CustomizedRequestActivity;)Landroid/support/design/widget/TextInputEditText;
    .registers 2
    .param p0, "x0"    # Lcom/ecommerce/furniture/CustomizedRequestActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ecommerce/furniture/CustomizedRequestActivity;->textInputEditTextColor:Landroid/support/design/widget/TextInputEditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ecommerce/furniture/CustomizedRequestActivity;)Landroid/support/design/widget/TextInputEditText;
    .registers 2
    .param p0, "x0"    # Lcom/ecommerce/furniture/CustomizedRequestActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ecommerce/furniture/CustomizedRequestActivity;->textInputEditTextQuantity:Landroid/support/design/widget/TextInputEditText;

    return-object v0
.end method

.method private emptyInputEditText()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 232
    iget-object v0, p0, Lcom/ecommerce/furniture/CustomizedRequestActivity;->textInputEditTextFName:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v0, p0, Lcom/ecommerce/furniture/CustomizedRequestActivity;->textInputEditTextColor:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, p0, Lcom/ecommerce/furniture/CustomizedRequestActivity;->textInputEditTextSize:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v0, p0, Lcom/ecommerce/furniture/CustomizedRequestActivity;->textInputEditTextQuantity:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 236
    return-void
.end method

.method private initListeners()V
    .registers 1

    .prologue
    .line 167
    return-void
.end method

.method private initObjects()V
    .registers 1

    .prologue
    .line 174
    return-void
.end method

.method private initViews()V
    .registers 1

    .prologue
    .line 158
    return-void
.end method

.method private postDataToSQLite()V
    .registers 4

    .prologue
    .line 189
    iget-object v1, p0, Lcom/ecommerce/furniture/CustomizedRequestActivity;->textInputEditTextFName:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v1}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/ecommerce/furniture/CustomizedRequestActivity;->textInputEditTextSize:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v1}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/ecommerce/furniture/CustomizedRequestActivity;->textInputEditTextColor:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v1}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/ecommerce/furniture/CustomizedRequestActivity;->textInputEditTextQuantity:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v1}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_42

    .line 204
    :try_start_30
    invoke-static {}, Lcom/ecommerce/furniture/helpers/SendMail;->sendMail()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_37

    .line 215
    :goto_33
    invoke-direct {p0}, Lcom/ecommerce/furniture/CustomizedRequestActivity;->emptyInputEditText()V

    .line 226
    :goto_36
    return-void

    .line 210
    :catch_37
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SendMail"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33

    .line 219
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_42
    const-string v1, "Please fill all fields"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_36
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v2, 0x7f04001c

    invoke-virtual {p0, v2}, Lcom/ecommerce/furniture/CustomizedRequestActivity;->setContentView(I)V

    .line 58
    invoke-virtual {p0}, Lcom/ecommerce/furniture/CustomizedRequestActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 60
    const v2, 0x7f0c00a6

    invoke-virtual {p0, v2}, Lcom/ecommerce/furniture/CustomizedRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/NestedScrollView;

    iput-object v2, p0, Lcom/ecommerce/furniture/CustomizedRequestActivity;->nestedScrollView:Landroid/support/v4/widget/NestedScrollView;

    .line 63
    const v2, 0x7f0c00a7

    invoke-virtual {p0, v2}, Lcom/ecommerce/furniture/CustomizedRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/TextInputLayout;

    iput-object v2, p0, Lcom/ecommerce/furniture/CustomizedRequestActivity;->textInputLayoutName:Landroid/support/design/widget/TextInputLayout;

    .line 64
    const v2, 0x7f0c00a9

    invoke-virtual {p0, v2}, Lcom/ecommerce/furniture/CustomizedRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/TextInputLayout;

    iput-object v2, p0, Lcom/ecommerce/furniture/CustomizedRequestActivity;->textInputLayoutEmail:Landroid/support/design/widget/TextInputLayout;

    .line 65
    const v2, 0x7f0c00ad

    invoke-virtual {p0, v2}, Lcom/ecommerce/furniture/CustomizedRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/TextInputLayout;

    iput-object v2, p0, Lcom/ecommerce/furniture/CustomizedRequestActivity;->textInputLayoutPassword:Landroid/support/design/widget/TextInputLayout;

    .line 66
    const v2, 0x7f0c00af

    invoke-virtual {p0, v2}, Lcom/ecommerce/furniture/CustomizedRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/TextInputLayout;

    iput-object v2, p0, Lcom/ecommerce/furniture/CustomizedRequestActivity;->textInputLayoutConfirmPassword:Landroid/support/design/widget/TextInputLayout;

    .line 68
    const v2, 0x7f0c00a8

    invoke-virtual {p0, v2}, Lcom/ecommerce/furniture/CustomizedRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/TextInputEditText;

    iput-object v2, p0, Lcom/ecommerce/furniture/CustomizedRequestActivity;->textInputEditTextFName:Landroid/support/design/widget/TextInputEditText;

    .line 69
    const v2, 0x7f0c00aa

    invoke-virtual {p0, v2}, Lcom/ecommerce/furniture/CustomizedRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/TextInputEditText;

    iput-object v2, p0, Lcom/ecommerce/furniture/CustomizedRequestActivity;->textInputEditTextSize:Landroid/support/design/widget/TextInputEditText;

    .line 70
    const v2, 0x7f0c00ac

    invoke-virtual {p0, v2}, Lcom/ecommerce/furniture/CustomizedRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/TextInputEditText;

    iput-object v2, p0, Lcom/ecommerce/furniture/CustomizedRequestActivity;->textInputEditTextColor:Landroid/support/design/widget/TextInputEditText;

    .line 71
    const v2, 0x7f0c00ae

    invoke-virtual {p0, v2}, Lcom/ecommerce/furniture/CustomizedRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/TextInputEditText;

    iput-object v2, p0, Lcom/ecommerce/furniture/CustomizedRequestActivity;->textInputEditTextQuantity:Landroid/support/design/widget/TextInputEditText;

    .line 73
    new-instance v2, Lcom/ecommerce/furniture/helpers/InputValidation;

    iget-object v3, p0, Lcom/ecommerce/furniture/CustomizedRequestActivity;->activity:Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {v2, v3}, Lcom/ecommerce/furniture/helpers/InputValidation;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ecommerce/furniture/CustomizedRequestActivity;->inputValidation:Lcom/ecommerce/furniture/helpers/InputValidation;

    .line 74
    new-instance v2, Lcom/ecommerce/furniture/helpers/DatabaseHelper;

    iget-object v3, p0, Lcom/ecommerce/furniture/CustomizedRequestActivity;->activity:Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {v2, v3}, Lcom/ecommerce/furniture/helpers/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ecommerce/furniture/CustomizedRequestActivity;->databaseHelper:Lcom/ecommerce/furniture/helpers/DatabaseHelper;

    .line 75
    new-instance v2, Lcom/ecommerce/furniture/helpers/User;

    invoke-direct {v2}, Lcom/ecommerce/furniture/helpers/User;-><init>()V

    iput-object v2, p0, Lcom/ecommerce/furniture/CustomizedRequestActivity;->user:Lcom/ecommerce/furniture/helpers/User;

    .line 78
    invoke-virtual {p0}, Lcom/ecommerce/furniture/CustomizedRequestActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 79
    .local v0, "in":Landroid/content/Intent;
    const-string v2, "EMAIL"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "str":Ljava/lang/String;
    const v2, 0x7f0c00b0

    invoke-virtual {p0, v2}, Lcom/ecommerce/furniture/CustomizedRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/AppCompatButton;

    iput-object v2, p0, Lcom/ecommerce/furniture/CustomizedRequestActivity;->appCompatButtonRegister:Landroid/support/v7/widget/AppCompatButton;

    .line 83
    iget-object v2, p0, Lcom/ecommerce/furniture/CustomizedRequestActivity;->appCompatButtonRegister:Landroid/support/v7/widget/AppCompatButton;

    new-instance v3, Lcom/ecommerce/furniture/CustomizedRequestActivity$1;

    invoke-direct {v3, p0, v1}, Lcom/ecommerce/furniture/CustomizedRequestActivity$1;-><init>(Lcom/ecommerce/furniture/CustomizedRequestActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    return-void
.end method
