.class Lins;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Linp;


# direct methods
.method constructor <init>(Linp;I)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lins;->b:Linp;

    iput p2, p0, Lins;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 173
    iget-object v0, p0, Lins;->b:Linp;

    iget v1, p0, Lins;->a:I

    invoke-static {v0, v1}, Linp;->a(Linp;I)I

    .line 174
    iget-object v0, p0, Lins;->b:Linp;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Linp;->a:Ljava/lang/Boolean;

    .line 175
    new-instance v1, Lije;

    invoke-direct {v1}, Lije;-><init>()V

    .line 176
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 177
    const-string v0, "listener"

    iget-object v3, p0, Lins;->b:Linp;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 180
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const-string v3, "dd/MM/yyyy"

    invoke-static {v0, v3}, Lnak;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 182
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "dd/MM/yyyy"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 183
    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 184
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 187
    :cond_0
    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 188
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 189
    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 191
    const-string v0, "fechaAgendada"

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 192
    const-string v0, "minimumDate"

    const/4 v4, 0x2

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 193
    const-string v0, "year"

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 194
    const-string v0, "month"

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 195
    const-string v0, "day"

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    invoke-virtual {v1, v2}, Landroid/support/v4/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 204
    iget-object v0, p0, Lins;->b:Linp;

    invoke-static {v0}, Linp;->b(Linp;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v2, "datePicker"

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 205
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 200
    const-string v3, "Error"

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
