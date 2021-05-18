.class public Lbr/com/santander/modulo/ddav1/components/CurrencyFormattedTextView;
.super Landroid/support/v7/widget/AppCompatTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public setTextAndFormat(Ljava/lang/CharSequence;)V
    .locals 9

    const/high16 v8, 0x41900000    # 18.0f

    const-wide v6, 0x412e848000000000L    # 1000000.0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v8}, Lbr/com/santander/modulo/ddav1/components/CurrencyFormattedTextView;->setTextSize(F)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide v4, 0x40c3880000000000L    # 10000.0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_1

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p0, v0}, Lbr/com/santander/modulo/ddav1/components/CurrencyFormattedTextView;->setTextSize(F)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide v4, 0x40f86a0000000000L    # 100000.0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_2

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p0, v0}, Lbr/com/santander/modulo/ddav1/components/CurrencyFormattedTextView;->setTextSize(F)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpg-double v1, v2, v6

    if-gez v1, :cond_3

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {p0, v0}, Lbr/com/santander/modulo/ddav1/components/CurrencyFormattedTextView;->setTextSize(F)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    div-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Laet;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "M"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v8}, Lbr/com/santander/modulo/ddav1/components/CurrencyFormattedTextView;->setTextSize(F)V

    goto :goto_0
.end method
