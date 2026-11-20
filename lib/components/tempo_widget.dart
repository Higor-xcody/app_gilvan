import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'tempo_model.dart';
export 'tempo_model.dart';

class TempoWidget extends StatefulWidget {
  const TempoWidget({
    super.key,
    String? label,
    bool? labelPresent,
    String? helper,
    bool? helperPresent,
    String? hint,
    String? value,
    String? onChange,
    String? onSubmit,
    this.leadingIcon,
    bool? leadingIconPresent,
    this.trailingIcon,
    bool? trailingIconPresent,
    String? variant,
    bool? error,
  })  : this.label = label ?? '',
        this.labelPresent = labelPresent ?? false,
        this.helper = helper ?? '',
        this.helperPresent = helperPresent ?? false,
        this.hint = hint ?? 'Selecione o material...',
        this.value = value ?? '',
        this.onChange = onChange ?? '',
        this.onSubmit = onSubmit ?? '',
        this.leadingIconPresent = leadingIconPresent ?? false,
        this.trailingIconPresent = trailingIconPresent ?? true,
        this.variant = variant ?? 'outlined',
        this.error = error ?? false;

  final String label;
  final bool labelPresent;
  final String helper;
  final bool helperPresent;
  final String hint;
  final String value;
  final String onChange;
  final String onSubmit;
  final Widget? leadingIcon;
  final bool leadingIconPresent;
  final Widget? trailingIcon;
  final bool trailingIconPresent;
  final String variant;
  final bool error;

  @override
  State<TempoWidget> createState() => _TempoWidgetState();
}

class _TempoWidgetState extends State<TempoWidget> {
  late TempoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TempoModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (valueOrDefault<bool>(
            widget.labelPresent,
            false,
          ))
            Text(
              widget.label,
              style: FlutterFlowTheme.of(context).labelMedium.override(
                    font: GoogleFonts.inter(
                      fontWeight:
                          FlutterFlowTheme.of(context).labelMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).labelMedium.fontStyle,
                    ),
                    color: widget.error
                        ? FlutterFlowTheme.of(context).error
                        : FlutterFlowTheme.of(context).primaryText,
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).labelMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelMedium.fontStyle,
                    lineHeight: 1.3,
                  ),
            ),
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              final _datePickedDate = await showDatePicker(
                context: context,
                initialDate: getCurrentTimestamp,
                firstDate: getCurrentTimestamp,
                lastDate: DateTime(2050),
                builder: (context, child) {
                  return wrapInMaterialDatePickerTheme(
                    context,
                    child!,
                    headerBackgroundColor: FlutterFlowTheme.of(context).primary,
                    headerForegroundColor: FlutterFlowTheme.of(context).info,
                    headerTextStyle:
                        FlutterFlowTheme.of(context).headlineLarge.override(
                              font: GoogleFonts.plusJakartaSans(
                                fontWeight: FontWeight.w600,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .headlineLarge
                                    .fontStyle,
                              ),
                              fontSize: 32.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .headlineLarge
                                  .fontStyle,
                            ),
                    pickerBackgroundColor:
                        FlutterFlowTheme.of(context).secondaryBackground,
                    pickerForegroundColor:
                        FlutterFlowTheme.of(context).primaryText,
                    selectedDateTimeBackgroundColor:
                        FlutterFlowTheme.of(context).primary,
                    selectedDateTimeForegroundColor:
                        FlutterFlowTheme.of(context).info,
                    actionButtonForegroundColor:
                        FlutterFlowTheme.of(context).primaryText,
                    iconSize: 24.0,
                  );
                },
              );

              if (_datePickedDate != null) {
                safeSetState(() {
                  _model.datePicked = DateTime(
                    _datePickedDate.year,
                    _datePickedDate.month,
                    _datePickedDate.day,
                  );
                });
              } else if (_model.datePicked != null) {
                safeSetState(() {
                  _model.datePicked = getCurrentTimestamp;
                });
              }
            },
            child: Container(
              height: 40.0,
              decoration: BoxDecoration(
                color: () {
                  if (widget.variant == 'filled') {
                    return FlutterFlowTheme.of(context).secondaryBackground;
                  } else if (widget.variant == 'ghost') {
                    return Colors.transparent;
                  } else {
                    return Colors.transparent;
                  }
                }(),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(valueOrDefault<double>(
                    () {
                      if (widget.variant == 'filled') {
                        return 8.0;
                      } else if (widget.variant == 'ghost') {
                        return 8.0;
                      } else {
                        return 8.0;
                      }
                    }(),
                    0.0,
                  )),
                  topRight: Radius.circular(valueOrDefault<double>(
                    () {
                      if (widget.variant == 'filled') {
                        return 8.0;
                      } else if (widget.variant == 'ghost') {
                        return 8.0;
                      } else {
                        return 8.0;
                      }
                    }(),
                    0.0,
                  )),
                  bottomLeft: Radius.circular(valueOrDefault<double>(
                    () {
                      if (widget.variant == 'filled') {
                        return 8.0;
                      } else if (widget.variant == 'ghost') {
                        return 8.0;
                      } else {
                        return 8.0;
                      }
                    }(),
                    0.0,
                  )),
                  bottomRight: Radius.circular(valueOrDefault<double>(
                    () {
                      if (widget.variant == 'filled') {
                        return 8.0;
                      } else if (widget.variant == 'ghost') {
                        return 8.0;
                      } else {
                        return 8.0;
                      }
                    }(),
                    0.0,
                  )),
                ),
                shape: BoxShape.rectangle,
                border: Border.all(
                  color: () {
                    if (widget.error) {
                      return FlutterFlowTheme.of(context).error;
                    } else if (widget.variant == 'filled') {
                      return Colors.transparent;
                    } else if (widget.variant == 'ghost') {
                      return Colors.transparent;
                    } else {
                      return FlutterFlowTheme.of(context).alternate;
                    }
                  }(),
                  width: () {
                    if (widget.error) {
                      return 1.0;
                    } else if (widget.variant == 'filled') {
                      return 1.0;
                    } else if (widget.variant == 'ghost') {
                      return 0.0;
                    } else {
                      return 1.0;
                    }
                  }(),
                ),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(
                    valueOrDefault<double>(
                      () {
                        if (widget.variant == 'filled') {
                          return 8.0;
                        } else if (widget.variant == 'ghost') {
                          return 8.0;
                        } else {
                          return 8.0;
                        }
                      }(),
                      0.0,
                    ),
                    valueOrDefault<double>(
                      () {
                        if (widget.variant == 'filled') {
                          return 8.0;
                        } else if (widget.variant == 'ghost') {
                          return 8.0;
                        } else {
                          return 8.0;
                        }
                      }(),
                      0.0,
                    ),
                    valueOrDefault<double>(
                      () {
                        if (widget.variant == 'filled') {
                          return 8.0;
                        } else if (widget.variant == 'ghost') {
                          return 8.0;
                        } else {
                          return 8.0;
                        }
                      }(),
                      0.0,
                    ),
                    valueOrDefault<double>(
                      () {
                        if (widget.variant == 'filled') {
                          return 8.0;
                        } else if (widget.variant == 'ghost') {
                          return 8.0;
                        } else {
                          return 8.0;
                        }
                      }(),
                      0.0,
                    )),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      dateTimeFormat("d/M/y", _model.datePicked),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.inter(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          if (valueOrDefault<bool>(
            widget.helperPresent,
            false,
          ))
            Text(
              widget.helper,
              style: FlutterFlowTheme.of(context).bodySmall.override(
                    font: GoogleFonts.inter(
                      fontWeight:
                          FlutterFlowTheme.of(context).bodySmall.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodySmall.fontStyle,
                    ),
                    color: widget.error
                        ? FlutterFlowTheme.of(context).error
                        : FlutterFlowTheme.of(context).secondaryText,
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).bodySmall.fontWeight,
                    fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                    lineHeight: 1.4,
                  ),
            ),
        ].divide(SizedBox(height: 6.0)),
      ),
    );
  }
}
