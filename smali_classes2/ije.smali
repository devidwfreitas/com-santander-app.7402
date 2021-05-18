.class public Lije;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lgpk;

.field private c:Landroid/app/DatePickerDialog$OnDateSetListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 22
    const-string v0, "DatePickerFragment"

    iput-object v0, p0, Lije;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 35
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 36
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 37
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 38
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 40
    invoke-virtual {p0}, Lije;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "fechaAgendada"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lije;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "year"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 42
    invoke-virtual {p0}, Lije;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "month"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 43
    invoke-virtual {p0}, Lije;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "day"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 45
    :cond_0
    invoke-virtual {p0}, Lije;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "listener"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DatePickerDialog$OnDateSetListener;

    iput-object v0, p0, Lije;->c:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 48
    invoke-virtual {p0}, Lije;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "maximumDate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 49
    new-instance v0, Lgpk;

    invoke-virtual {p0}, Lije;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lije;->c:Landroid/app/DatePickerDialog$OnDateSetListener;

    invoke-direct/range {v0 .. v6}, Lgpk;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;IIII)V

    iput-object v0, p0, Lije;->b:Lgpk;

    .line 69
    :goto_0
    invoke-virtual {p0}, Lije;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lije;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 70
    iget-object v0, p0, Lije;->b:Lgpk;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lije;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgpk;->setTitle(Ljava/lang/CharSequence;)V

    .line 71
    :cond_1
    iget-object v0, p0, Lije;->b:Lgpk;

    return-object v0

    .line 50
    :cond_2
    invoke-virtual {p0}, Lije;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "minimumDate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 51
    invoke-virtual {p0}, Lije;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "minimumDate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/Integer;

    .line 52
    new-instance v0, Lgpk;

    invoke-virtual {p0}, Lije;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lije;->c:Landroid/app/DatePickerDialog$OnDateSetListener;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lgpk;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;IIII)V

    iput-object v0, p0, Lije;->b:Lgpk;

    goto :goto_0

    .line 65
    :cond_3
    new-instance v0, Lgpk;

    invoke-virtual {p0}, Lije;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lije;->c:Landroid/app/DatePickerDialog$OnDateSetListener;

    invoke-direct/range {v0 .. v5}, Lgpk;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    iput-object v0, p0, Lije;->b:Lgpk;

    goto :goto_0
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lije;->c:Landroid/app/DatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lije;->c:Landroid/app/DatePickerDialog$OnDateSetListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/DatePickerDialog$OnDateSetListener;->onDateSet(Landroid/widget/DatePicker;III)V

    .line 81
    :cond_0
    return-void
.end method
