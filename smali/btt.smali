.class Lbtt;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbtp;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lbtp;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lbtt;->a:Lbtp;

    .line 216
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 217
    invoke-direct {p0}, Lbtt;->c()V

    .line 218
    return-void
.end method

.method static synthetic a(Lbtt;)Landroid/view/View;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lbtt;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lbtt;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lbtt;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lbtt;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lbtt;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 221
    invoke-virtual {p0}, Lbtt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 222
    sget v1, Lbjw;->com_facebook_tooltip_bubble:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 223
    sget v0, Lbju;->com_facebook_tooltip_bubble_view_top_pointer:I

    invoke-virtual {p0, v0}, Lbtt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbtt;->b:Landroid/widget/ImageView;

    .line 224
    sget v0, Lbju;->com_facebook_tooltip_bubble_view_bottom_pointer:I

    invoke-virtual {p0, v0}, Lbtt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbtt;->c:Landroid/widget/ImageView;

    .line 226
    sget v0, Lbju;->com_facebook_body_frame:I

    invoke-virtual {p0, v0}, Lbtt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbtt;->d:Landroid/view/View;

    .line 227
    sget v0, Lbju;->com_facebook_button_xout:I

    invoke-virtual {p0, v0}, Lbtt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbtt;->e:Landroid/widget/ImageView;

    .line 228
    return-void
.end method

.method static synthetic d(Lbtt;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lbtt;->e:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lbtt;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lbtt;->c:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 233
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lbtt;->b:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lbtt;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 238
    return-void
.end method
