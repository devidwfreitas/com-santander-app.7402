.class public Lyf;
.super Lacr;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "text"

.field private static final c:Ljava/lang/String; = "texto"

.field private static final d:Ljava/lang/String; = "pdf"

.field private static final e:Ljava/lang/String; = "html"


# instance fields
.field private final f:Lxw;

.field private g:Landroid/widget/ScrollView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/webkit/WebView;

.field private k:Landroid/widget/ImageButton;

.field private l:Landroid/view/View;

.field private m:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lack;Lxw;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lacr;-><init>(Lack;)V

    .line 57
    iput-object p2, p0, Lyf;->f:Lxw;

    .line 58
    invoke-direct {p0}, Lyf;->b()V

    .line 59
    invoke-direct {p0}, Lyf;->c()V

    .line 60
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lyf;->e()Lack;

    move-result-object v0

    sget v1, Lla;->ta_tipo_texto:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lyf;->g:Landroid/widget/ScrollView;

    .line 65
    invoke-virtual {p0}, Lyf;->e()Lack;

    move-result-object v0

    sget v1, Lla;->ta_web:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lyf;->j:Landroid/webkit/WebView;

    .line 66
    invoke-virtual {p0}, Lyf;->e()Lack;

    move-result-object v0

    sget v1, Lla;->ta_titulo:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lyf;->h:Landroid/widget/TextView;

    .line 67
    invoke-virtual {p0}, Lyf;->e()Lack;

    move-result-object v0

    sget v1, Lla;->ta_termo:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lyf;->i:Landroid/widget/TextView;

    .line 68
    invoke-virtual {p0}, Lyf;->e()Lack;

    move-result-object v0

    sget v1, Lla;->header_cancel:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lyf;->k:Landroid/widget/ImageButton;

    .line 69
    invoke-virtual {p0}, Lyf;->e()Lack;

    move-result-object v0

    sget v1, Lla;->header_logo:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lyf;->l:Landroid/view/View;

    .line 70
    invoke-virtual {p0}, Lyf;->e()Lack;

    move-result-object v0

    sget v1, Lla;->term_aceite_btn_compartilhar:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lyf;->m:Landroid/widget/Button;

    .line 71
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 76
    iget-object v0, p0, Lyf;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lyf;->k:Landroid/widget/ImageButton;

    sget v1, Lkz;->ic_back:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 78
    iget-object v0, p0, Lyf;->k:Landroid/widget/ImageButton;

    new-instance v1, Lyg;

    invoke-direct {v1, p0}, Lyg;-><init>(Lyf;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lyf;->m:Landroid/widget/Button;

    new-instance v1, Lyh;

    invoke-direct {v1, p0}, Lyh;-><init>(Lyf;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lyf;->f:Lxw;

    invoke-virtual {v0}, Lxw;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lyf;->f:Lxw;

    invoke-virtual {v0}, Lxw;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "texto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    :cond_0
    iget-object v0, p0, Lyf;->j:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lyf;->g:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lyf;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lyf;->f:Lxw;

    invoke-virtual {v1}, Lxw;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lyf;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lyf;->f:Lxw;

    invoke-virtual {v1}, Lxw;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "{P}"

    const-string v3, "\n\n"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lyf;->f:Lxw;

    invoke-virtual {v0}, Lxw;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    iget-object v0, p0, Lyf;->j:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lyf;->g:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lyf;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lyf;->f:Lxw;

    invoke-virtual {v1}, Lxw;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lyf;->j:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 110
    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lyf;->j:Landroid/webkit/WebView;

    iget-object v1, p0, Lyf;->f:Lxw;

    invoke-virtual {v1}, Lxw;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lyf;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "text/html; charset=utf-8"

    const-string v3, "utf-8"

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_2
    iget-object v0, p0, Lyf;->g:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lyf;->j:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lyf;->j:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 120
    iget-object v0, p0, Lyf;->f:Lxw;

    invoke-virtual {v0}, Lxw;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "amp;"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lyf;->f:Lxw;

    invoke-virtual {v1}, Lxw;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pdf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://drive.google.com/viewerng/viewer?embedded=true&url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    :cond_3
    iget-object v1, p0, Lyf;->j:Landroid/webkit/WebView;

    invoke-static {v1, v0}, Lcom/ca/android/app/CaMDOWebView;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 131
    const-string v0, "&lt;![CDATA["

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "]]&gt;"

    const-string v2, ""

    .line 132
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "["

    const-string v2, ""

    .line 133
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&lt;"

    const-string v2, "<"

    .line 134
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&gt;"

    const-string v2, ">"

    .line 135
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 131
    return-object v0
.end method

.method private e(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 2

    .prologue
    .line 143
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 144
    invoke-direct {p0, p1}, Lyf;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v0

    .line 148
    :goto_0
    return-object v0

    .line 146
    :cond_0
    invoke-direct {p0, p1}, Lyf;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 155
    :try_start_0
    iget-object v0, p0, Lyf;->f:Lxw;

    invoke-virtual {v0}, Lxw;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 173
    :goto_1
    return-void

    .line 155
    :sswitch_0
    const-string v2, "text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "texto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "pdf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 157
    :pswitch_0
    invoke-virtual {p0}, Lyf;->e()Lack;

    move-result-object v0

    iget-object v1, p0, Lyf;->g:Landroid/widget/ScrollView;

    invoke-static {v0, v1}, Laau;->a(Landroid/content/Context;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 170
    :catch_0
    move-exception v0

    .line 171
    const-string v1, "OPPs"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 160
    :pswitch_1
    :try_start_1
    invoke-virtual {p0}, Lyf;->e()Lack;

    move-result-object v0

    iget-object v1, p0, Lyf;->g:Landroid/widget/ScrollView;

    invoke-static {v0, v1}, Laau;->a(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_1

    .line 163
    :pswitch_2
    invoke-virtual {p0}, Lyf;->e()Lack;

    move-result-object v0

    iget-object v1, p0, Lyf;->f:Lxw;

    invoke-virtual {v1}, Lxw;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Laau;->a(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_1

    .line 166
    :pswitch_3
    invoke-virtual {p0}, Lyf;->e()Lack;

    move-result-object v0

    iget-object v1, p0, Lyf;->f:Lxw;

    invoke-virtual {v1}, Lxw;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laau;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 155
    nop

    :sswitch_data_0
    .sparse-switch
        0x1b0f2 -> :sswitch_2
        0x3107ab -> :sswitch_3
        0x36452d -> :sswitch_0
        0x69260e2 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
