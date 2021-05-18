.class public Limc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/habilitacaointernacional/activity/CadastrarHabilitacaoInternacionalActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/habilitacaointernacional/activity/CadastrarHabilitacaoInternacionalActivity;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Limc;->a:Lcom/santander/app/habilitacaointernacional/activity/CadastrarHabilitacaoInternacionalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 140
    iget-object v0, p0, Limc;->a:Lcom/santander/app/habilitacaointernacional/activity/CadastrarHabilitacaoInternacionalActivity;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/santander/app/habilitacaointernacional/activity/CadastrarHabilitacaoInternacionalActivity;->a:Ljava/lang/Boolean;

    .line 141
    new-instance v1, Lije;

    invoke-direct {v1}, Lije;-><init>()V

    .line 142
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 143
    const-string v0, "listener"

    iget-object v3, p0, Limc;->a:Lcom/santander/app/habilitacaointernacional/activity/CadastrarHabilitacaoInternacionalActivity;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 146
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const-string v3, "dd/MM/yyyy"

    invoke-static {v0, v3}, Lnak;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 148
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "dd/MM/yyyy"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 149
    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 150
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 153
    :cond_0
    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 154
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 155
    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 157
    const-string v0, "fechaAgendada"

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 158
    const-string v0, "minimumDate"

    const/4 v4, 0x2

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 159
    const-string v0, "year"

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 160
    const-string v0, "month"

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 161
    const-string v0, "day"

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    invoke-virtual {v1, v2}, Landroid/support/v4/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 170
    iget-object v0, p0, Limc;->a:Lcom/santander/app/habilitacaointernacional/activity/CadastrarHabilitacaoInternacionalActivity;

    invoke-virtual {v0}, Lcom/santander/app/habilitacaointernacional/activity/CadastrarHabilitacaoInternacionalActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v2, "datePicker"

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 171
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 166
    const-string v3, "Error"

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
