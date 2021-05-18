.class Lhoe;
.super Lhof;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic c:Lhob;


# direct methods
.method constructor <init>(Lhob;Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    .line 151
    iput-object p1, p0, Lhoe;->c:Lhob;

    .line 152
    invoke-direct {p0, p1, p2}, Lhof;-><init>(Lhob;Landroid/view/ViewGroup;)V

    .line 153
    iget-object v0, p0, Lhoe;->d:Lcom/santander/app/components/view/SantanderEditText;

    invoke-virtual {v0, p0}, Lcom/santander/app/components/view/SantanderEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 154
    iget-object v0, p0, Lhoe;->d:Lcom/santander/app/components/view/SantanderEditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderEditText;->setInputType(I)V

    .line 155
    iget-object v0, p0, Lhoe;->d:Lcom/santander/app/components/view/SantanderEditText;

    invoke-static {v0, p0}, Lnak;->a(Landroid/widget/EditText;Landroid/text/TextWatcher;)Landroid/text/TextWatcher;

    .line 156
    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 182
    const-string v0, "dd/MM/yyyy"

    invoke-static {p1, v0}, Lhyx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    .line 183
    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-static {v1}, Lhyx;->c(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    .line 184
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 183
    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 171
    :try_start_0
    iget-object v0, p0, Lhoe;->d:Lcom/santander/app/components/view/SantanderEditText;

    invoke-virtual {v0}, Lcom/santander/app/components/view/SantanderEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    const-string v1, ".*[a-zA-Z]+.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    const-string v0, ""

    invoke-virtual {p0, v0}, Lhoe;->a(Ljava/lang/String;)V

    .line 179
    :goto_0
    return-void

    .line 174
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lhoe;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-virtual {p0, v0}, Lhoe;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 165
    return-void
.end method
