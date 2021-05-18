.class public Lcom/santander/app/seguros/ui/contract/activities/FullScreenInfoActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "title-key"

.field public static final b:Ljava/lang/String; = "description-key"


# instance fields
.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Lcom/santander/app/seguros/ui/widgets/JustifiedTextView;

.field private f:Landroid/widget/TextView;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/FullScreenInfoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 52
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 53
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 54
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 55
    const v1, 0x7f09052c

    invoke-virtual {p0, v1}, Lcom/santander/app/seguros/ui/contract/activities/FullScreenInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 59
    const v0, 0x7f10030c

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/contract/activities/FullScreenInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/FullScreenInfoActivity;->c:Landroid/widget/ImageView;

    .line 60
    const v0, 0x7f10030b

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/contract/activities/FullScreenInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/FullScreenInfoActivity;->d:Landroid/widget/ImageView;

    .line 61
    const v0, 0x7f10030e

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/contract/activities/FullScreenInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/JustifiedTextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/FullScreenInfoActivity;->e:Lcom/santander/app/seguros/ui/widgets/JustifiedTextView;

    .line 62
    const v0, 0x7f10030d

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/contract/activities/FullScreenInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/FullScreenInfoActivity;->f:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/FullScreenInfoActivity;->d:Landroid/widget/ImageView;

    new-instance v1, Lljn;

    invoke-direct {v1, p0}, Lljn;-><init>(Lcom/santander/app/seguros/ui/contract/activities/FullScreenInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/FullScreenInfoActivity;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/contract/activities/FullScreenInfoActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/FullScreenInfoActivity;->e:Lcom/santander/app/seguros/ui/widgets/JustifiedTextView;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/FullScreenInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0078

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/JustifiedTextView;->setTextColor(I)V

    .line 74
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/FullScreenInfoActivity;->e:Lcom/santander/app/seguros/ui/widgets/JustifiedTextView;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/JustifiedTextView;->setTextSize(I)V

    .line 76
    const-string v0, "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec vulputate lacus. Duis nisl quam, suscipit at dignissim vitae, egestas eu lectus. Aenean vel risus aliquam, aliquam magna ac, pulvinar libero. Nam erat orci, commodo a orci non, placerat condimentum leo. Aliquam sodales elit sit amet metus consectetur commodo. Nullam vehicula magna at ultrices dapibus. Sed sit amet pellentesque massa. Curabitur non mattis diam.\n\nVivamus tempus sed est sed consectetur. Curabitur venenatis eget nisi ut molestie. In id sagittis tellus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur fringilla ante non consectetur fringilla. Donec tristique finibus laoreet. Vestibulum suscipit ipsum sit amet tellus mollis porttitor. Phasellus eget dolor maximus, gravida tortor eget, varius erat.\n\nFusce eget enim a libero efficitur dignissim eu quis arcu. Nulla viverra justo vitae mi porta, nec pellentesque sem tincidunt. Quisque non est sit amet leo eleifend vehicula non ut diam. Vivamus egestas ante a mauris blandit tempus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. \n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec vulputate lacus. Duis nisl quam, suscipit at dignissim vitae, egestas eu lectus. Aenean vel risus aliquam, aliquam magna ac, pulvinar libero. Nam erat orci, commodo a orci non, placerat condimentum leo. Aliquam sodales elit sit amet metus consectetur commodo. Nullam vehicula magna at ultrices dapibus. Sed sit amet pellentesque massa. Curabitur non mattis diam."

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</br></br></br></br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/santander/app/seguros/ui/contract/activities/FullScreenInfoActivity;->e:Lcom/santander/app/seguros/ui/widgets/JustifiedTextView;

    invoke-virtual {v1, v0}, Lcom/santander/app/seguros/ui/widgets/JustifiedTextView;->setText(Ljava/lang/String;)V

    .line 86
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f040069

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/contract/activities/FullScreenInfoActivity;->setContentView(I)V

    .line 39
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/contract/activities/FullScreenInfoActivity;->b()V

    .line 41
    if-nez p1, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/FullScreenInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/FullScreenInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/FullScreenInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/FullScreenInfoActivity;->g:Ljava/lang/String;

    .line 47
    :cond_0
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/contract/activities/FullScreenInfoActivity;->c()V

    .line 48
    return-void
.end method
