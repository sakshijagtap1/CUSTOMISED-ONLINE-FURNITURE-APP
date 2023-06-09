.class public Lcom/ecommerce/furniture/helpers/InputValidation;
.super Ljava/lang/Object;
.source "InputValidation.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/ecommerce/furniture/helpers/InputValidation;->context:Landroid/content/Context;

    .line 23
    return-void
.end method

.method private hideKeyboardFrom(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 86
    iget-object v1, p0, Lcom/ecommerce/furniture/helpers/InputValidation;->context:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 87
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 88
    return-void
.end method


# virtual methods
.method public isInputEditTextEmail(Landroid/support/design/widget/TextInputEditText;Landroid/support/design/widget/TextInputLayout;Ljava/lang/String;)Z
    .registers 7
    .param p1, "textInputEditText"    # Landroid/support/design/widget/TextInputEditText;
    .param p2, "textInputLayout"    # Landroid/support/design/widget/TextInputLayout;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-virtual {p1}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1f

    sget-object v2, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_26

    .line 58
    :cond_1f
    invoke-virtual {p2, p3}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 59
    invoke-direct {p0, p1}, Lcom/ecommerce/furniture/helpers/InputValidation;->hideKeyboardFrom(Landroid/view/View;)V

    .line 64
    :goto_25
    return v1

    .line 62
    :cond_26
    invoke-virtual {p2, v1}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 64
    const/4 v1, 0x1

    goto :goto_25
.end method

.method public isInputEditTextFilled(Landroid/support/design/widget/TextInputEditText;Landroid/support/design/widget/TextInputLayout;Ljava/lang/String;)Z
    .registers 7
    .param p1, "textInputEditText"    # Landroid/support/design/widget/TextInputEditText;
    .param p2, "textInputLayout"    # Landroid/support/design/widget/TextInputLayout;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-virtual {p1}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 36
    invoke-virtual {p2, p3}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/ecommerce/furniture/helpers/InputValidation;->hideKeyboardFrom(Landroid/view/View;)V

    .line 43
    :goto_19
    return v1

    .line 40
    :cond_1a
    invoke-virtual {p2, v1}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 43
    const/4 v1, 0x1

    goto :goto_19
.end method

.method public isInputEditTextMatches(Landroid/support/design/widget/TextInputEditText;Landroid/support/design/widget/TextInputEditText;Landroid/support/design/widget/TextInputLayout;Ljava/lang/String;)Z
    .registers 9
    .param p1, "textInputEditText1"    # Landroid/support/design/widget/TextInputEditText;
    .param p2, "textInputEditText2"    # Landroid/support/design/widget/TextInputEditText;
    .param p3, "textInputLayout"    # Landroid/support/design/widget/TextInputLayout;
    .param p4, "message"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-virtual {p1}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "value1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "value2":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 71
    invoke-virtual {p3, p4}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 72
    invoke-direct {p0, p2}, Lcom/ecommerce/furniture/helpers/InputValidation;->hideKeyboardFrom(Landroid/view/View;)V

    .line 77
    :goto_25
    return v2

    .line 75
    :cond_26
    invoke-virtual {p3, v2}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 77
    const/4 v2, 0x1

    goto :goto_25
.end method
