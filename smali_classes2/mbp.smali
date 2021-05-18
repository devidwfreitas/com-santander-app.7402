.class public Lmbp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/widgets/EmojiExcludeEditText;


# direct methods
.method private constructor <init>(Lcom/santander/app/seguros/ui/widgets/EmojiExcludeEditText;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lmbp;->a:Lcom/santander/app/seguros/ui/widgets/EmojiExcludeEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/santander/app/seguros/ui/widgets/EmojiExcludeEditText;Lmbo;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lmbp;-><init>(Lcom/santander/app/seguros/ui/widgets/EmojiExcludeEditText;)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 75
    :goto_0
    if-ge p2, p3, :cond_2

    .line 76
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    .line 77
    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_1

    .line 78
    :cond_0
    const-string v0, ""

    .line 81
    :goto_1
    return-object v0

    .line 75
    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 81
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
