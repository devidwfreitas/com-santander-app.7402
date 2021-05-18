.class Lhud;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/View;

.field private b:I


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lhud;->a:Landroid/view/View;

    .line 91
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lhuc;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lhud;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lhud;I)I
    .locals 0

    .prologue
    .line 85
    iput p1, p0, Lhud;->b:I

    return p1
.end method

.method static synthetic a(Lhud;)Landroid/view/View;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lhud;->a:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lhud;)I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lhud;->b:I

    return v0
.end method
