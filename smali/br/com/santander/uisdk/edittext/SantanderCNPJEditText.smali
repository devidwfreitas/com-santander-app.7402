.class public Lbr/com/santander/uisdk/edittext/SantanderCNPJEditText;
.super Lbr/com/santander/uisdk/edittext/SantanderEditText;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lbr/com/santander/uisdk/edittext/SantanderEditText;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lbr/com/santander/uisdk/edittext/SantanderEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-direct {p0, p1, p2}, Lbr/com/santander/uisdk/edittext/SantanderCNPJEditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lbr/com/santander/uisdk/edittext/SantanderEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-direct {p0, p1, p2}, Lbr/com/santander/uisdk/edittext/SantanderCNPJEditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lbr/com/santander/uisdk/edittext/SantanderEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 34
    invoke-direct {p0, p1, p2}, Lbr/com/santander/uisdk/edittext/SantanderCNPJEditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 55
    const-string v0, "##.###.###/####-##"

    invoke-static {v0, p0}, Lanx;->a(Ljava/lang/String;Landroid/widget/EditText;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbr/com/santander/uisdk/edittext/SantanderCNPJEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 56
    return-void
.end method


# virtual methods
.method public a()Lang;
    .locals 5

    .prologue
    .line 38
    invoke-super {p0}, Lbr/com/santander/uisdk/edittext/SantanderEditText;->a()Lang;

    move-result-object v0

    .line 39
    invoke-virtual {p0}, Lbr/com/santander/uisdk/edittext/SantanderCNPJEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lanx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-static {v1}, Lanx;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lane;

    sget-object v2, Lanf;->INVALID_CNPJ:Lanf;

    invoke-virtual {p0}, Lbr/com/santander/uisdk/edittext/SantanderCNPJEditText;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lalv;->invalid_field_cnpj:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lane;-><init>(Lanf;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0, v1}, Lang;->a(Lane;)V

    .line 46
    :cond_0
    return-object v0
.end method
