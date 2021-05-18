.class public Llcf;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "ASSISTANCE_NAME_KEY"

.field private static final b:Ljava/lang/String; = "PROTOCOL_NUMBER_KEY"

.field private static final c:Ljava/lang/String; = "EMERGENCY_SCHEDULE"

.field private static final d:I = 0xb26e


# instance fields
.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Llci;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Landroid/widget/Button;

.field private n:Landroid/widget/RelativeLayout;

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Llcf;
    .locals 3

    .prologue
    .line 58
    new-instance v0, Llcf;

    invoke-direct {v0}, Llcf;-><init>()V

    .line 59
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 60
    const-string v2, "ASSISTANCE_NAME_KEY"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v2, "PROTOCOL_NUMBER_KEY"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v2, "EMERGENCY_SCHEDULE"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 63
    invoke-virtual {v0, v1}, Llcf;->setArguments(Landroid/os/Bundle;)V

    .line 64
    return-object v0
.end method

.method static synthetic a(Llcf;)Llci;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Llcf;->j:Llci;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Llcf;->e:Landroid/widget/TextView;

    iget-object v1, p0, Llcf;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Llcf;->f:Landroid/widget/TextView;

    iget-object v1, p0, Llcf;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const-string v1, "dd/MM/yyyy HH:mm"

    invoke-static {v0, v1}, Lmhj;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    iget-object v1, p0, Llcf;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-boolean v0, p0, Llcf;->o:Z

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Llcf;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    :cond_0
    iget-object v0, p0, Llcf;->h:Landroid/widget/TextView;

    new-instance v1, Llcg;

    invoke-direct {v1, p0}, Llcg;-><init>(Llcf;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Llcf;->m:Landroid/widget/Button;

    new-instance v1, Llch;

    invoke-direct {v1, p0}, Llch;-><init>(Llcf;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 89
    const v0, 0x7f100915

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llcf;->e:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f100918

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llcf;->f:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f100919

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llcf;->g:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f10091a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llcf;->h:Landroid/widget/TextView;

    .line 93
    const v0, 0x7f10091c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llcf;->i:Landroid/widget/TextView;

    .line 94
    const v0, 0x7f100210

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Llcf;->n:Landroid/widget/RelativeLayout;

    .line 95
    const v0, 0x7f100217

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llcf;->m:Landroid/widget/Button;

    .line 96
    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Llcf;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {p0}, Llcf;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    const v2, 0xb26e

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Llcf;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Llcf;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lmhj;->a(Landroid/view/View;Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Llcf;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Llcf;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090af9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lmhj;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Llcf;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Llcf;->b()V

    return-void
.end method


# virtual methods
.method public a(Llci;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Llcf;->j:Llci;

    .line 153
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Llcf;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Llcf;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ASSISTANCE_NAME_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llcf;->k:Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Llcf;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "PROTOCOL_NUMBER_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llcf;->l:Ljava/lang/String;

    .line 74
    invoke-virtual {p0}, Llcf;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EMERGENCY_SCHEDULE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Llcf;->o:Z

    .line 76
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 80
    const v0, 0x7f0401dc

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 82
    invoke-direct {p0, v0}, Llcf;->a(Landroid/view/View;)V

    .line 83
    invoke-direct {p0}, Llcf;->a()V

    .line 85
    return-object v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 139
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 140
    packed-switch p1, :pswitch_data_0

    .line 149
    :goto_0
    return-void

    .line 142
    :pswitch_0
    array-length v0, p3

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_0

    .line 143
    invoke-direct {p0}, Llcf;->b()V

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {p0}, Llcf;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Llcf;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090462

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0xb26e
        :pswitch_0
    .end packed-switch
.end method
