.class Lgub;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lgtz;


# direct methods
.method constructor <init>(Lgtz;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lgub;->a:Lgtz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 173
    iget-object v0, p0, Lgub;->a:Lgtz;

    iget-object v1, p0, Lgub;->a:Lgtz;

    invoke-static {v1}, Lgtz;->a(Lgtz;)Lguf;

    move-result-object v1

    invoke-interface {v1}, Lguf;->a()I

    move-result v1

    iget-object v2, p0, Lgub;->a:Lgtz;

    invoke-static {v2}, Lgtz;->b(Lgtz;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lgtz;->a(Lgtz;I)I

    .line 175
    iget-object v0, p0, Lgub;->a:Lgtz;

    invoke-static {v0, v3}, Lgtz;->b(Lgtz;I)I

    .line 176
    iget-object v0, p0, Lgub;->a:Lgtz;

    invoke-static {v0}, Lgtz;->c(Lgtz;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lgub;->a:Lgtz;

    iget-object v1, p0, Lgub;->a:Lgtz;

    invoke-static {v1}, Lgtz;->d(Lgtz;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lgtz;->b(Lgtz;I)I

    .line 179
    :cond_0
    iget-object v0, p0, Lgub;->a:Lgtz;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lgub;->a:Lgtz;

    invoke-static {v2}, Lgtz;->e(Lgtz;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lgtz;->c(Lgtz;I)I

    .line 181
    iget-object v0, p0, Lgub;->a:Lgtz;

    invoke-static {v0}, Lgtz;->f(Lgtz;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 183
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 226
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 187
    :pswitch_0
    iget-object v1, p0, Lgub;->a:Lgtz;

    invoke-static {v1}, Lgtz;->g(Lgtz;)I

    move-result v1

    iget-object v2, p0, Lgub;->a:Lgtz;

    invoke-static {v2}, Lgtz;->h(Lgtz;)I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 188
    iget-object v1, p0, Lgub;->a:Lgtz;

    invoke-static {v1}, Lgtz;->g(Lgtz;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 189
    iget-object v1, p0, Lgub;->a:Lgtz;

    invoke-static {v1}, Lgtz;->f(Lgtz;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    :cond_1
    iget-object v0, p0, Lgub;->a:Lgtz;

    invoke-static {v0}, Lgtz;->g(Lgtz;)I

    move-result v0

    iget-object v1, p0, Lgub;->a:Lgtz;

    invoke-static {v1}, Lgtz;->i(Lgtz;)I

    move-result v1

    if-le v0, v1, :cond_2

    .line 193
    iget-object v0, p0, Lgub;->a:Lgtz;

    invoke-static {v0, v3}, Lgtz;->a(Lgtz;Z)Z

    .line 194
    iget-object v0, p0, Lgub;->a:Lgtz;

    invoke-static {v0}, Lgtz;->d(Lgtz;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 196
    :cond_2
    iget-object v0, p0, Lgub;->a:Lgtz;

    iget-object v1, p0, Lgub;->a:Lgtz;

    invoke-static {v1}, Lgtz;->j(Lgtz;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lgtz;->d(Lgtz;I)I

    .line 198
    const-string v0, "COUNT_MOVE"

    iget-object v1, p0, Lgub;->a:Lgtz;

    invoke-static {v1}, Lgtz;->j(Lgtz;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const-string v0, "ACTION_MOVE"

    iget-object v1, p0, Lgub;->a:Lgtz;

    invoke-static {v1}, Lgtz;->g(Lgtz;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 203
    :pswitch_1
    iget-object v0, p0, Lgub;->a:Lgtz;

    invoke-static {v0}, Lgtz;->j(Lgtz;)I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_4

    .line 204
    iget-object v0, p0, Lgub;->a:Lgtz;

    invoke-static {v0}, Lgtz;->g(Lgtz;)I

    move-result v0

    iget-object v1, p0, Lgub;->a:Lgtz;

    invoke-static {v1}, Lgtz;->i(Lgtz;)I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 205
    iget-object v0, p0, Lgub;->a:Lgtz;

    invoke-static {v0}, Lgtz;->k(Lgtz;)V

    .line 218
    :goto_1
    iget-object v0, p0, Lgub;->a:Lgtz;

    invoke-static {v0, v3}, Lgtz;->d(Lgtz;I)I

    .line 219
    const-string v0, "ACTION_UP"

    iget-object v1, p0, Lgub;->a:Lgtz;

    invoke-static {v1}, Lgtz;->g(Lgtz;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 207
    :cond_3
    iget-object v0, p0, Lgub;->a:Lgtz;

    invoke-static {v0}, Lgtz;->l(Lgtz;)V

    goto :goto_1

    .line 210
    :cond_4
    iget-object v0, p0, Lgub;->a:Lgtz;

    invoke-static {v0}, Lgtz;->m(Lgtz;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 211
    iget-object v0, p0, Lgub;->a:Lgtz;

    invoke-static {v0}, Lgtz;->k(Lgtz;)V

    goto :goto_1

    .line 213
    :cond_5
    iget-object v0, p0, Lgub;->a:Lgtz;

    invoke-static {v0}, Lgtz;->d(Lgtz;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lgub;->a:Lgtz;

    invoke-static {v0, v3}, Lgtz;->a(Lgtz;Z)Z

    .line 215
    iget-object v0, p0, Lgub;->a:Lgtz;

    invoke-static {v0}, Lgtz;->l(Lgtz;)V

    goto :goto_1

    .line 223
    :pswitch_2
    const-string v0, "ACTION_DOWN"

    iget-object v1, p0, Lgub;->a:Lgtz;

    invoke-static {v1}, Lgtz;->g(Lgtz;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
