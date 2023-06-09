.class public Lcom/ecommerce/furniture/RegisterActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final activity:Landroid/support/v7/app/AppCompatActivity;

.field private appCompatButtonRegister:Landroid/support/v7/widget/AppCompatButton;

.field private appCompatTextViewLoginLink:Landroid/support/v7/widget/AppCompatTextView;

.field private databaseHelper:Lcom/ecommerce/furniture/helpers/DatabaseHelper;

.field private inputValidation:Lcom/ecommerce/furniture/helpers/InputValidation;

.field private nestedScrollView:Landroid/support/v4/widget/NestedScrollView;

.field private textClass:Landroid/support/design/widget/TextInputLayout;

.field private textInputEditTextConfirmPassword:Landroid/support/design/widget/TextInputEditText;

.field private textInputEditTextEmail:Landroid/support/design/widget/TextInputEditText;

.field private textInputEditTextName:Landroid/support/design/widget/TextInputEditText;

.field private textInputEditTextPassword:Landroid/support/design/widget/TextInputEditText;

.field private textInputLayoutConfirmPassword:Landroid/support/design/widget/TextInputLayout;

.field private textInputLayoutEmail:Landroid/support/design/widget/TextInputLayout;

.field private textInputLayoutName:Landroid/support/design/widget/TextInputLayout;

.field private textInputLayoutPassword:Landroid/support/design/widget/TextInputLayout;

.field private textStudentClass:Landroid/support/design/widget/TextInputEditText;

.field private user:Lcom/ecommerce/furniture/helpers/User;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 23
    iput-object p0, p0, Lcom/ecommerce/furniture/RegisterActivity;->activity:Landroid/support/v7/app/AppCompatActivity;

    return-void
.end method

.method private emptyInputEditText()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 171
    iget-object v0, p0, Lcom/ecommerce/furniture/RegisterActivity;->textInputEditTextName:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/ecommerce/furniture/RegisterActivity;->textInputEditTextEmail:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/ecommerce/furniture/RegisterActivity;->textInputEditTextPassword:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/ecommerce/furniture/RegisterActivity;->textInputEditTextConfirmPassword:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 175
    return-void
.end method

.method private initListeners()V
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/ecommerce/furniture/RegisterActivity;->appCompatButtonRegister:Landroid/support/v7/widget/AppCompatButton;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/ecommerce/furniture/RegisterActivity;->appCompatTextViewLoginLink:Landroid/support/v7/widget/AppCompatTextView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/AppCompatTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    return-void
.end method

.method private initObjects()V
    .registers 3

    .prologue
    .line 96
    new-instance v0, Lcom/ecommerce/furniture/helpers/InputValidation;

    iget-object v1, p0, Lcom/ecommerce/furniture/RegisterActivity;->activity:Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {v0, v1}, Lcom/ecommerce/furniture/helpers/InputValidation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ecommerce/furniture/RegisterActivity;->inputValidation:Lcom/ecommerce/furniture/helpers/InputValidation;

    .line 97
    new-instance v0, Lcom/ecommerce/furniture/helpers/DatabaseHelper;

    iget-object v1, p0, Lcom/ecommerce/furniture/RegisterActivity;->activity:Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {v0, v1}, Lcom/ecommerce/furniture/helpers/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ecommerce/furniture/RegisterActivity;->databaseHelper:Lcom/ecommerce/furniture/helpers/DatabaseHelper;

    .line 98
    new-instance v0, Lcom/ecommerce/furniture/helpers/User;

    invoke-direct {v0}, Lcom/ecommerce/furniture/helpers/User;-><init>()V

    iput-object v0, p0, Lcom/ecommerce/furniture/RegisterActivity;->user:Lcom/ecommerce/furniture/helpers/User;

    .line 100
    return-void
.end method

.method private initViews()V
    .registers 2

    .prologue
    .line 64
    const v0, 0x7f0c00a6

    invoke-virtual {p0, v0}, Lcom/ecommerce/furniture/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/NestedScrollView;

    iput-object v0, p0, Lcom/ecommerce/furniture/RegisterActivity;->nestedScrollView:Landroid/support/v4/widget/NestedScrollView;

    .line 65
    const v0, 0x7f0c00be

    invoke-virtual {p0, v0}, Lcom/ecommerce/furniture/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputEditText;

    iput-object v0, p0, Lcom/ecommerce/furniture/RegisterActivity;->textStudentClass:Landroid/support/design/widget/TextInputEditText;

    .line 67
    const v0, 0x7f0c00a7

    invoke-virtual {p0, v0}, Lcom/ecommerce/furniture/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p0, Lcom/ecommerce/furniture/RegisterActivity;->textInputLayoutName:Landroid/support/design/widget/TextInputLayout;

    .line 68
    const v0, 0x7f0c00a9

    invoke-virtual {p0, v0}, Lcom/ecommerce/furniture/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p0, Lcom/ecommerce/furniture/RegisterActivity;->textInputLayoutEmail:Landroid/support/design/widget/TextInputLayout;

    .line 69
    const v0, 0x7f0c00ad

    invoke-virtual {p0, v0}, Lcom/ecommerce/furniture/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p0, Lcom/ecommerce/furniture/RegisterActivity;->textInputLayoutPassword:Landroid/support/design/widget/TextInputLayout;

    .line 70
    const v0, 0x7f0c00af

    invoke-virtual {p0, v0}, Lcom/ecommerce/furniture/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p0, Lcom/ecommerce/furniture/RegisterActivity;->textInputLayoutConfirmPassword:Landroid/support/design/widget/TextInputLayout;

    .line 72
    const v0, 0x7f0c00bd

    invoke-virtual {p0, v0}, Lcom/ecommerce/furniture/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputEditText;

    iput-object v0, p0, Lcom/ecommerce/furniture/RegisterActivity;->textInputEditTextName:Landroid/support/design/widget/TextInputEditText;

    .line 73
    const v0, 0x7f0c00b1

    invoke-virtual {p0, v0}, Lcom/ecommerce/furniture/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputEditText;

    iput-object v0, p0, Lcom/ecommerce/furniture/RegisterActivity;->textInputEditTextEmail:Landroid/support/design/widget/TextInputEditText;

    .line 74
    const v0, 0x7f0c00b2

    invoke-virtual {p0, v0}, Lcom/ecommerce/furniture/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputEditText;

    iput-object v0, p0, Lcom/ecommerce/furniture/RegisterActivity;->textInputEditTextPassword:Landroid/support/design/widget/TextInputEditText;

    .line 75
    const v0, 0x7f0c00bf

    invoke-virtual {p0, v0}, Lcom/ecommerce/furniture/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputEditText;

    iput-object v0, p0, Lcom/ecommerce/furniture/RegisterActivity;->textInputEditTextConfirmPassword:Landroid/support/design/widget/TextInputEditText;

    .line 77
    const v0, 0x7f0c00c0

    invoke-virtual {p0, v0}, Lcom/ecommerce/furniture/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatButton;

    iput-object v0, p0, Lcom/ecommerce/furniture/RegisterActivity;->appCompatButtonRegister:Landroid/support/v7/widget/AppCompatButton;

    .line 79
    const v0, 0x7f0c00c1

    invoke-virtual {p0, v0}, Lcom/ecommerce/furniture/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/ecommerce/furniture/RegisterActivity;->appCompatTextViewLoginLink:Landroid/support/v7/widget/AppCompatTextView;

    .line 81
    return-void
.end method

.method private postDataToSQLite()V
    .registers 7

    .prologue
    const v4, 0x7f060042

    const/4 v5, 0x0

    .line 128
    iget-object v0, p0, Lcom/ecommerce/furniture/RegisterActivity;->inputValidation:Lcom/ecommerce/furniture/helpers/InputValidation;

    iget-object v1, p0, Lcom/ecommerce/furniture/RegisterActivity;->textInputEditTextName:Landroid/support/design/widget/TextInputEditText;

    iget-object v2, p0, Lcom/ecommerce/furniture/RegisterActivity;->textInputLayoutName:Landroid/support/design/widget/TextInputLayout;

    const v3, 0x7f060043

    invoke-virtual {p0, v3}, Lcom/ecommerce/furniture/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/ecommerce/furniture/helpers/InputValidation;->isInputEditTextFilled(Landroid/support/design/widget/TextInputEditText;Landroid/support/design/widget/TextInputLayout;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 165
    :cond_17
    :goto_17
    return-void

    .line 131
    :cond_18
    iget-object v0, p0, Lcom/ecommerce/furniture/RegisterActivity;->inputValidation:Lcom/ecommerce/furniture/helpers/InputValidation;

    iget-object v1, p0, Lcom/ecommerce/furniture/RegisterActivity;->textInputEditTextEmail:Landroid/support/design/widget/TextInputEditText;

    iget-object v2, p0, Lcom/ecommerce/furniture/RegisterActivity;->textInputLayoutEmail:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p0, v4}, Lcom/ecommerce/furniture/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/ecommerce/furniture/helpers/InputValidation;->isInputEditTextFilled(Landroid/support/design/widget/TextInputEditText;Landroid/support/design/widget/TextInputLayout;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 134
    iget-object v0, p0, Lcom/ecommerce/furniture/RegisterActivity;->inputValidation:Lcom/ecommerce/furniture/helpers/InputValidation;

    iget-object v1, p0, Lcom/ecommerce/furniture/RegisterActivity;->textInputEditTextEmail:Landroid/support/design/widget/TextInputEditText;

    iget-object v2, p0, Lcom/ecommerce/furniture/RegisterActivity;->textInputLayoutEmail:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p0, v4}, Lcom/ecommerce/furniture/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/ecommerce/furniture/helpers/InputValidation;->isInputEditTextEmail(Landroid/support/design/widget/TextInputEditText;Landroid/support/design/widget/TextInputLayout;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 137
    iget-object v0, p0, Lcom/ecommerce/furniture/RegisterActivity;->inputValidation:Lcom/ecommerce/furniture/helpers/InputValidation;

    iget-object v1, p0, Lcom/ecommerce/furniture/RegisterActivity;->textInputEditTextPassword:Landroid/support/design/widget/TextInputEditText;

    iget-object v2, p0, Lcom/ecommerce/furniture/RegisterActivity;->textInputLayoutPassword:Landroid/support/design/widget/TextInputLayout;

    const v3, 0x7f060044

    invoke-virtual {p0, v3}, Lcom/ecommerce/furniture/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/ecommerce/furniture/helpers/InputValidation;->isInputEditTextFilled(Landroid/support/design/widget/TextInputEditText;Landroid/support/design/widget/TextInputLayout;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 140
    iget-object v0, p0, Lcom/ecommerce/furniture/RegisterActivity;->inputValidation:Lcom/ecommerce/furniture/helpers/InputValidation;

    iget-object v1, p0, Lcom/ecommerce/furniture/RegisterActivity;->textInputEditTextPassword:Landroid/support/design/widget/TextInputEditText;

    iget-object v2, p0, Lcom/ecommerce/furniture/RegisterActivity;->textInputEditTextConfirmPassword:Landroid/support/design/widget/TextInputEditText;

    iget-object v3, p0, Lcom/ecommerce/furniture/RegisterActivity;->textInputLayoutConfirmPassword:Landroid/support/design/widget/TextInputLayout;

    const v4, 0x7f060045

    .line 141
    invoke-virtual {p0, v4}, Lcom/ecommerce/furniture/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 140
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ecommerce/furniture/helpers/InputValidation;->isInputEditTextMatches(Landroid/support/design/widget/TextInputEditText;Landroid/support/design/widget/TextInputEditText;Landroid/support/design/widget/TextInputLayout;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 145
    iget-object v0, p0, Lcom/ecommerce/furniture/RegisterActivity;->databaseHelper:Lcom/ecommerce/furniture/helpers/DatabaseHelper;

    iget-object v1, p0, Lcom/ecommerce/furniture/RegisterActivity;->textInputEditTextEmail:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v1}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ecommerce/furniture/helpers/DatabaseHelper;->checkUser(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_de

    .line 147
    iget-object v0, p0, Lcom/ecommerce/furniture/RegisterActivity;->user:Lcom/ecommerce/furniture/helpers/User;

    iget-object v1, p0, Lcom/ecommerce/furniture/RegisterActivity;->textInputEditTextName:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v1}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ecommerce/furniture/helpers/User;->setName(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/ecommerce/furniture/RegisterActivity;->user:Lcom/ecommerce/furniture/helpers/User;

    iget-object v1, p0, Lcom/ecommerce/furniture/RegisterActivity;->textInputEditTextEmail:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v1}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ecommerce/furniture/helpers/User;->setEmail(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/ecommerce/furniture/RegisterActivity;->user:Lcom/ecommerce/furniture/helpers/User;

    iget-object v1, p0, Lcom/ecommerce/furniture/RegisterActivity;->textInputEditTextPassword:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v1}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ecommerce/furniture/helpers/User;->setPassword(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/ecommerce/furniture/RegisterActivity;->user:Lcom/ecommerce/furniture/helpers/User;

    iget-object v1, p0, Lcom/ecommerce/furniture/RegisterActivity;->textStudentClass:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v1}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ecommerce/furniture/helpers/User;->setStudent_class(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/ecommerce/furniture/RegisterActivity;->databaseHelper:Lcom/ecommerce/furniture/helpers/DatabaseHelper;

    iget-object v1, p0, Lcom/ecommerce/furniture/RegisterActivity;->user:Lcom/ecommerce/furniture/helpers/User;

    invoke-virtual {v0, v1}, Lcom/ecommerce/furniture/helpers/DatabaseHelper;->addUser(Lcom/ecommerce/furniture/helpers/User;)V

    .line 155
    iget-object v0, p0, Lcom/ecommerce/furniture/RegisterActivity;->nestedScrollView:Landroid/support/v4/widget/NestedScrollView;

    const v1, 0x7f06005b

    invoke-virtual {p0, v1}, Lcom/ecommerce/furniture/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    .line 156
    invoke-direct {p0}, Lcom/ecommerce/furniture/RegisterActivity;->emptyInputEditText()V

    goto/16 :goto_17

    .line 161
    :cond_de
    iget-object v0, p0, Lcom/ecommerce/furniture/RegisterActivity;->nestedScrollView:Landroid/support/v4/widget/NestedScrollView;

    const v1, 0x7f060040

    invoke-virtual {p0, v1}, Lcom/ecommerce/furniture/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    goto/16 :goto_17
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_1e

    .line 122
    :goto_7
    return-void

    .line 113
    :pswitch_8
    invoke-direct {p0}, Lcom/ecommerce/furniture/RegisterActivity;->postDataToSQLite()V

    goto :goto_7

    .line 117
    :pswitch_c
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ecommerce/furniture/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/ecommerce/furniture/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    .local v0, "intentRegister":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/ecommerce/furniture/RegisterActivity;->startActivity(Landroid/content/Intent;)V

    .line 119
    invoke-virtual {p0}, Lcom/ecommerce/furniture/RegisterActivity;->finish()V

    goto :goto_7

    .line 110
    :pswitch_data_1e
    .packed-switch 0x7f0c00c0
        :pswitch_8
        :pswitch_c
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f040021

    invoke-virtual {p0, v0}, Lcom/ecommerce/furniture/RegisterActivity;->setContentView(I)V

    .line 52
    invoke-virtual {p0}, Lcom/ecommerce/furniture/RegisterActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 54
    invoke-direct {p0}, Lcom/ecommerce/furniture/RegisterActivity;->initViews()V

    .line 55
    invoke-direct {p0}, Lcom/ecommerce/furniture/RegisterActivity;->initListeners()V

    .line 56
    invoke-direct {p0}, Lcom/ecommerce/furniture/RegisterActivity;->initObjects()V

    .line 58
    return-void
.end method
