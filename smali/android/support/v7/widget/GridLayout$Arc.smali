.class final Landroid/support/v7/widget/GridLayout$Arc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final span:Landroid/support/v7/widget/GridLayout$Interval;

.field public valid:Z

.field public final value:Landroid/support/v7/widget/GridLayout$MutableInt;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/GridLayout$Interval;Landroid/support/v7/widget/GridLayout$MutableInt;)V
    .locals 1

    .prologue
    .line 2114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2112
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Arc;->valid:Z

    .line 2115
    iput-object p1, p0, Landroid/support/v7/widget/GridLayout$Arc;->span:Landroid/support/v7/widget/GridLayout$Interval;

    .line 2116
    iput-object p2, p0, Landroid/support/v7/widget/GridLayout$Arc;->value:Landroid/support/v7/widget/GridLayout$MutableInt;

    .line 2117
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/support/v7/widget/GridLayout$Arc;->span:Landroid/support/v7/widget/GridLayout$Interval;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Arc;->valid:Z

    if-nez v0, :cond_0

    const-string v0, "+>"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/GridLayout$Arc;->value:Landroid/support/v7/widget/GridLayout$MutableInt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "->"

    goto :goto_0
.end method
