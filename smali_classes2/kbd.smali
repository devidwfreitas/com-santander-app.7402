.class public Lkbd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Landroid/widget/SeekBar;

.field final synthetic b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;Landroid/widget/SeekBar;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 126
    iput-object p1, p0, Lkbd;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    iput-object p2, p0, Lkbd;->a:Landroid/widget/SeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput v0, p0, Lkbd;->c:I

    .line 129
    iput v0, p0, Lkbd;->d:I

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .prologue
    .line 133
    iput p2, p0, Lkbd;->c:I

    .line 134
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lkbd;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lkbd;->d:I

    .line 139
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 7

    .prologue
    const v6, 0x7f0e0103

    const v5, 0x7f020623

    const/16 v4, 0x32

    const v3, 0x7f0e00fa

    const v2, 0x7f020622

    .line 144
    iget v0, p0, Lkbd;->c:I

    const/16 v1, 0x19

    if-gt v0, v1, :cond_2

    .line 145
    const-string v0, "Outros_InvestimentosNoATM_BloqueioDeInvestimentosELimitesNoCaixa_Acao"

    const-string v1, "NaoBloquear"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lkbd;->a:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 149
    iget-object v0, p0, Lkbd;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->a(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lkbd;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-virtual {v1}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    iget-object v0, p0, Lkbd;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->b(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lkbd;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-virtual {v1}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    iget-object v0, p0, Lkbd;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->c(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lkbd;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-virtual {v1}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 153
    iget-object v0, p0, Lkbd;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->d(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lkbd;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-virtual {v1}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    iget-object v0, p0, Lkbd;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->e(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lkbd;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-virtual {v1}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    iget-object v0, p0, Lkbd;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->f(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lkbd;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-virtual {v1}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 199
    :cond_0
    :goto_0
    iget v0, p0, Lkbd;->d:I

    iget v1, p0, Lkbd;->c:I

    if-eq v0, v1, :cond_1

    .line 200
    iget-object v0, p0, Lkbd;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    iget v1, p0, Lkbd;->c:I

    iget v2, p0, Lkbd;->d:I

    iget-object v3, p0, Lkbd;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1, v2, v3}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->a(IILandroid/widget/SeekBar;)V

    .line 202
    :cond_1
    return-void

    .line 157
    :cond_2
    iget v0, p0, Lkbd;->c:I

    const/16 v1, 0x19

    if-le v0, v1, :cond_3

    iget v0, p0, Lkbd;->c:I

    if-gt v0, v4, :cond_3

    .line 158
    const-string v0, "Outros_InvestimentosNoATM_BloqueioDeInvestimentosELimitesNoCaixa_Acao"

    const-string v1, "Bloquear18hAte9h"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lkbd;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 162
    iget-object v0, p0, Lkbd;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->a(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lkbd;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-virtual {v1}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 163
    iget-object v0, p0, Lkbd;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->b(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lkbd;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-virtual {v1}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    iget-object v0, p0, Lkbd;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->c(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lkbd;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-virtual {v1}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    iget-object v0, p0, Lkbd;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->d(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lkbd;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-virtual {v1}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    iget-object v0, p0, Lkbd;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->e(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lkbd;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-virtual {v1}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    iget-object v0, p0, Lkbd;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->f(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lkbd;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-virtual {v1}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 170
    :cond_3
    iget v0, p0, Lkbd;->c:I

    if-le v0, v4, :cond_4

    iget v0, p0, Lkbd;->c:I

    const/16 v1, 0x4b

    if-gt v0, v1, :cond_4

    .line 171
    const-string v0, "Outros_InvestimentosNoATM_BloqueioDeInvestimentosELimitesNoCaixa_Acao"

    const-string v1, "Bloquear18hAte9h"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lkbd;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 175
    iget-object v0, p0, Lkbd;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->a(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lkbd;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-virtual {v1}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    iget-object v0, p0, Lkbd;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->b(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lkbd;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-virtual {v1}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    iget-object v0, p0, Lkbd;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->c(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lkbd;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-virtual {v1}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 179
    iget-object v0, p0, Lkbd;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->d(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lkbd;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-virtual {v1}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 180
    iget-object v0, p0, Lkbd;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->e(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lkbd;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-virtual {v1}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 181
    iget-object v0, p0, Lkbd;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->f(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lkbd;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-virtual {v1}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 184
    :cond_4
    iget v0, p0, Lkbd;->c:I

    const/16 v1, 0x4b

    if-le v0, v1, :cond_0

    .line 185
    const-string v0, "Outros_InvestimentosNoATM_BloqueioDeInvestimentosELimitesNoCaixa_Acao"

    const-string v1, "Bloquear24h"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lkbd;->a:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 189
    iget-object v0, p0, Lkbd;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->a(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lkbd;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-virtual {v1}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 190
    iget-object v0, p0, Lkbd;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->b(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lkbd;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-virtual {v1}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 191
    iget-object v0, p0, Lkbd;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->c(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lkbd;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-virtual {v1}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    iget-object v0, p0, Lkbd;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->d(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lkbd;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-virtual {v1}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 194
    iget-object v0, p0, Lkbd;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->e(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lkbd;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-virtual {v1}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 195
    iget-object v0, p0, Lkbd;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->f(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lkbd;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-virtual {v1}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0
.end method
