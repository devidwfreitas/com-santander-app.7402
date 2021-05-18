.class public Lbr/com/santander/uisdk/edittext/SantanderCPFEditText;
.super Lbr/com/santander/uisdk/edittext/SantanderEditText;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lbr/com/santander/uisdk/edittext/SantanderEditText;-><init>(Landroid/content/Context;)V

    .line 18
    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/uisdk/edittext/SantanderCPFEditText;->a:Ljava/lang/Integer;

    .line 23
    invoke-direct {p0}, Lbr/com/santander/uisdk/edittext/SantanderCPFEditText;->e()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lbr/com/santander/uisdk/edittext/SantanderEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/uisdk/edittext/SantanderCPFEditText;->a:Ljava/lang/Integer;

    .line 28
    invoke-direct {p0}, Lbr/com/santander/uisdk/edittext/SantanderCPFEditText;->e()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lbr/com/santander/uisdk/edittext/SantanderEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/uisdk/edittext/SantanderCPFEditText;->a:Ljava/lang/Integer;

    .line 33
    invoke-direct {p0}, Lbr/com/santander/uisdk/edittext/SantanderCPFEditText;->e()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lbr/com/santander/uisdk/edittext/SantanderEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 18
    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/uisdk/edittext/SantanderCPFEditText;->a:Ljava/lang/Integer;

    .line 39
    invoke-direct {p0}, Lbr/com/santander/uisdk/edittext/SantanderCPFEditText;->e()V

    .line 40
    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 58
    const-string v0, "###.###.###-##"

    invoke-static {v0, p0}, Lanx;->a(Ljava/lang/String;Landroid/widget/EditText;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbr/com/santander/uisdk/edittext/SantanderCPFEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 59
    return-void
.end method


# virtual methods
.method public a()Lang;
    .locals 5

    .prologue
    .line 43
    invoke-super {p0}, Lbr/com/santander/uisdk/edittext/SantanderEditText;->a()Lang;

    move-result-object v0

    .line 44
    invoke-virtual {p0}, Lbr/com/santander/uisdk/edittext/SantanderCPFEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lanx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-static {v1}, Lanx;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Lane;

    sget-object v2, Lanf;->INVALID_CPF:Lanf;

    invoke-virtual {p0}, Lbr/com/santander/uisdk/edittext/SantanderCPFEditText;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lalv;->invalid_field_cpf:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lane;-><init>(Lanf;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0, v1}, Lang;->a(Lane;)V

    .line 51
    :cond_0
    return-object v0
.end method
