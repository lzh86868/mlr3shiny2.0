tabpanel_evaluating <- fluidRow(
    column(
        3,
        wellPanel(
            uiOutput(outputId = "eval_learner_selection"),
            fluidRow(
                column(
                    12,
                    uiOutput(outputId = "eval_loss_function_selection")
                )
            ),
            fluidRow(
                column(
                    12,
                    uiOutput(outputId = "eval_compare_method_selection")
                )
            ),
            hidden(
                fluidRow(
                    id = "feature_selection_panel",
                    column(
                        12,
                        uiOutput(outputId = "eval_learner_feat_selection")
                    )
                )
            ),
            fluidRow(
                id = "evaluate_start_button",
                column(
                    12,
                    div(
                        style = "display:inline-block; width:100%; text-align: center;",
                        actionButton(inputId = "evaluate_start", label = "Start evaluating")
                    )
                )
            )
        )
    ),
    column(
        9,
        uiOutput(outputId = "eval_learner_plot_tabs"),
        wellPanel(
          h5("Feature Importance", style = "font-weight: bold;"),
          downloadButton("download3", "Download plot")
        ),
        wellPanel(
          h5("PD-Plot", style = "font-weight: bold;"),
          downloadButton("download4", "Download plot")
        )
    )
)